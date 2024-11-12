<%@ page import='java.util.ArrayList' %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Session Location</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Session Location</h1>
		<hr>
		<div>
			<%
			for (String str : lists) {
				out.println(str);
			}
			%>			
		</div>
	</main>
	<%@ include file='../footer.jsp' %>
</body>
</html>