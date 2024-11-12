<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String rId;
String rPwd;
if (request.getParameter("id") != null && request.getParameter("pwd") != null) {
	rId = request.getParameter("id");
	rPwd = request.getParameter("pwd");
} else {
	rId = session.getAttribute("sId").toString();
	rPwd = session.getAttribute("sPwd").toString();
}

if (rId.equals("ja2pyc") && rPwd.equals("1234")) {
	session.setAttribute("sId", rId);
	session.setAttribute("sPwd", rPwd);
} else {
	response.sendRedirect("sessionQuiz.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Session Quiz Login</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Session Quiz Login</h1>
		<hr>
		<div><%=session.getAttribute("sId")%>님 반갑습니다.
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>