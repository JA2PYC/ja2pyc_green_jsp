<%@ page import='java.util.List'%>
<%@ page import='java.util.Map'%>
<%@ page import='java.util.HashMap'%>
<%@ page import='model1.board.BoardDAO'%>
<%@ page import='model1.board.BoardDTO'%>
<%@ page import='utils.BoardPage'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
BoardDAO dao = new BoardDAO(application);

Map<String, Object> param = new HashMap<String, Object>();
String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if (searchWord != null && searchField != null) {
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);
}

int totalCount = dao.selectCount(param);

int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
int totalPage = (int) Math.ceil((double) totalCount / pageSize);

int pageNum = 1;
String pageTemp = request.getParameter("pageNum");

if (pageTemp != null && !pageTemp.equals(""))
	pageNum = Integer.parseInt(pageTemp);

int start = (pageNum - 1) * pageSize + 1;
int end = pageNum * pageSize;
param.put("start", start);
param.put("end", end);

List<BoardDTO> boardLists = dao.selectListPage(param);
dao.closeJDBC();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP - List</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<jsp:include page="../common/link.jsp"></jsp:include>
		<hr>
		<h1>List</h1>
		<hr>
		<div>
			<h2>
				게시물 목록 - 현재 페이지 :
				<%=pageNum%>
				(전체 :
				<%=totalPage%>)
			</h2>
			<div>
				<form action="" method='get'>
					<table>
						<tr>
							<td><select name='searchField'>
									<option value='title'>제목</option>
									<option value='content'>내용</option>
							</select> <input type='text' name='searchWord' /> <input type='submit'
								value='검색'></td>
						</tr>
					</table>
				</form>
			</div>
			<div>
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>작성일</th>
					</tr>
					<%
					if (boardLists.isEmpty()) {
					%>
					<tr>
						<td>등록된 게시물이 없습니다.</td>
					</tr>
					<%
					} else {
					int virtualNum = 0;
					int countNum = 0;
					for (BoardDTO dto : boardLists) {
						virtualNum = totalCount - (((pageNum - 1) * pageSize) + countNum++);
					%>
					<tr>
						<td><%=virtualNum%></td>
						<td><a href='view.jsp?num=<%=dto.getNum()%>'><%=dto.getTitle()%></a></td>
						<td><%=dto.getId()%></td>
						<td><%=dto.getVisitcount()%></td>
						<td><%=dto.getPostdate()%></td>
					</tr>
					<%
					}
					}
					%>
				</table>
				<table>
					<tr>
						<td><%=BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, request.getRequestURI())%>
						</td>
						<td><button type='button'
								onclick='location.href="write.jsp";'>글쓰기</button></td>
					</tr>
				</table>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>