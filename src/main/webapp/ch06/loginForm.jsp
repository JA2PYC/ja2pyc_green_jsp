<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session - Login Form</title>
<script type="text/javascript"
	src='https://code.jquery.com/jquery-3.7.1.min.js'></script>
<script type="text/javascript" src='./js/loginForm.js'></script>
<link rel='stylesheet' type='text/css' href='./css/loginForm.css'>
<link rel='stylesheet' type='text/css' href='<%=request.getContextPath()%>/css/base_style.css'>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Login Form</h1>
		<hr>
		<jsp:include page="../common/link.jsp" />
		<hr>
		<div>
			<h2>Form</h2>
			<div>
				<span class='loginMsg'><%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg")%></span>
			</div>
			<div>
			<%
			if (session.getAttribute("UserId") == null) {
				%>
				<form action="loginProcess.jsp" method='post' name='loginForm'
					onsubmit='return validateForm(this)'>
					<div>
						<label for='user_id'>ID : </label><input type='text'
							name='user_id' id='user_id' placeholder='아이디' />
					</div>
					<div>
						<label for='user_pw'>Password : </label><input type='password'
							name='user_pw' id='user_pw' placeholder='패스워드' />
					</div>
					<div>
						<input type='submit' value='로그인' />
					</div>
				</form>
				<% 
			} else {
				%>
				<div><%=session.getAttribute("UserName") %> 회원님, 로그인 하셨습니다.<br/></div>
				<div><a href = 'logout.jsp'>로그아웃</a></div>
				<%
			}
			%>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>