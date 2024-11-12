<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Response Login</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Response Login</h1>
		<hr>
		<div>
			<h2>Login</h2>
			<%
			String id = request.getParameter("user_id");
			String pwd = request.getParameter("user_pwd");
			if ( id.equals("must") && pwd.equalsIgnoreCase("1234")) {
				response.sendRedirect("responseWelcome.jsp");
			} else {
				request.getRequestDispatcher("responseMain.jsp?loginErr=1").forward(request, response);
			}
			%>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>