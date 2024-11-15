<%@ page import='model1.board.BoardDTO'%>
<%@ page import='model1.board.BoardDAO'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file='./isLoggedIn.jsp'%>
<%
String num = request.getParameter("num");
BoardDAO dao = new BoardDAO(application);
BoardDTO dto = dao.selectView(num);
String sId = session.getAttribute("UserId").toString();
if (!sId.equals(dto.getId())) {
	JSFunction.alertBack("작성자 본인만 수정할 수 있습니다.", out);
	return;
}
dao.closeJDBC();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board - Edit</title>
<link rel='stylesheet' type='text/css' href='./css/edit.css'>
<script type="text/javascript" src='./js/edit.js'></script>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Edit</h1>
		<hr>
		<div>
			<h2>Modify</h2>
			<div>
				<form action="editProcess.jsp" method='post' name='writeFrm'
					onsubmit='return validateForm(this);'>
					<input type='hidden' name='num' value='<%=dto.getNum()%>'>
					<table>
						<tr>
							<td>제목</td>
							<td><input type='text' name='title'
								value='<%=dto.getTitle()%>'></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name='content' rows="" cols=""><%=dto.getContent()%></textarea></td>
						</tr>
						<tr>
							<td colspan='2'>
								<button type='submit'>작성완료</button>
								<button type='reset'> 다시 입력</button>
								<button type='button' onclick='location.href="list.jsp";'>목록 보기</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>