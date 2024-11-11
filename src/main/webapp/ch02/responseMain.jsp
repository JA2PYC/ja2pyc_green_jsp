<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Response Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Response Main</h1>
		<hr>
		<div>
			<h2>Login Form</h2>
			<div>
			<%
			String loginErr = request.getParameter("loginErr");
			if (loginErr != null ) out.print("로그인 실패");
			%>
			</div>
			<div>
			<form action="./responseLogin.jsp" method='post'>
				<div><label>ID : </label><input type="text" name="user_id" /></div>
				<div><label>PASSWORD : </label><input type="text" name="user_pwd" /></div>
			</form>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>