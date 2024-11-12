<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Session Quiz</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Session Quiz</h1>
		<hr>
		<div>
		<form action="sessionQuizLogin.jsp" method='post'>
			<div><label>ID : </label><input type='text' name='id' placeholder='아이디' /></div>
			<div><label>PW : </label><input type='password' name='pwd' placeholder='패스워드' /></div>
			<div><input type='submit' value='로그인' /></div>
		</form>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>