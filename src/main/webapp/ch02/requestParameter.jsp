<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String sex = request.getParameter("sex");
String[] favorite = request.getParameterValues("favorite");
String favoriteStr = "";
if (favorite != null) {
	for (int i = 0; i < favorite.length; i++) {
		favoriteStr += favorite[i] + " ";
	}
}
String intro = request.getParameter("describe").replace("\r\n", "<br />");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Request Parameter</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h2>Request Parameter</h2>
		<hr>
		<div>
			<ul>
			<li>ID : <%= id %></li>
			<li>Gender : <%= sex %></li>
			<li>Favorite : <%= favoriteStr %></li>
			<li>Describe : <%= intro %></li>
			</ul>
		</div>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>