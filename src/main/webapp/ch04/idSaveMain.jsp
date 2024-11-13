<%@ page import='utils.CookieManager'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String loginId = CookieManager.readCookie(request, "loginId");

String cookieCheck = "";
if (!loginId.equals("")) {
	cookieCheck = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie - ID Save Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>ID Save Main</h1>
		<hr>
		<div>
			<h2>Login Page</h2>
			<div>
				<form action="idSaveProcess.jsp" method="post">
					<div>
						<label>ID : </label><input type='text' name='user_id'
							value='<%=loginId%>' />
					</div>
					<div>
						<label>Password : </label><input type='password' name='user_pw' />
					</div>
					<div>
						<label>아이디 저장 </label><input type='checkbox' name='save_check'
							value='Y' <%=cookieCheck%> />
					</div>
					<div>
						<input type='submit' value='로그인' />
					</div>
				</form>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>