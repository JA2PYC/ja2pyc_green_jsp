<%@ page import='model1.board.BoardDAO'%>
<%@ page import='model1.board.BoardDTO'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");

BoardDAO dao = new BoardDAO(application);
dao.updateVisitCount(num);
BoardDTO dto = dao.selectView(num);
dao.closeJDBC();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board - View</title>
<script type="text/javascript" src='./js/view.js'></script>
<link rel='stylesheet' type='text/css' href='./css/view.css'>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<jsp:include page="../common/link.jsp"></jsp:include>
		<h1>View</h1>
		<hr>
		<div>
			<h2>Details</h2>
			<div>
				<form action="" name='writeFrm'>
					<input type='hidden' name='num' value='<%=num%>' />
					<table>
						<tr>
							<td>번호</td>
							<td><%=dto.getNum()%></td>
							<td>작성자</td>
							<td><%=dto.getName()%></td>
						</tr>
						<tr>
							<td>작성일</td>
							<td><%=dto.getPostdate()%></td>
							<td>조회수</td>
							<td><%=dto.getVisitcount()%></td>
						</tr>
						<tr>
							<td>제목</td>
							<td colspan='3'><%=dto.getTitle()%></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan='3'><%=dto.getContent()%></td>
						</tr>
						<tr>
							<td colspan='4'>
							<%
							if (session.getAttribute("UserId") != null && session.getAttribute("UserId").toString().equals(dto.getId())) {
							%>
								<button type='button' onclick='location.href="edit.jsp?num=<%=dto.getNum()%>";'>수정하기</button>
								<button type='button' onclick='deletePost();'>삭제하기</button>
							<%
							}
							%>
							<button type='button' onclick='location.href="list.jsp";'>목록 보기</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>