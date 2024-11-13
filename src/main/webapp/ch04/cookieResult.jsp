<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Cookie[] cookies = request.getCookies(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie - Cookie Result</title>
</head>
<body>
	<%@ include file='../header.jsp' %>
	<main>
		<h1>Cookie Result</h1>
		<hr>
		<div>
		<%
		if (cookies != null){
			for (Cookie c : cookies){
				String cookieName = c.getName();
				String cookieValue = c.getValue();
				String cookieAge = String.valueOf(c.getMaxAge());
				out.print(String.format("%s : %s, %s<br/>", cookieName, cookieValue, cookieAge));
			}
		}
		%>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp' %>
</body>
</html>