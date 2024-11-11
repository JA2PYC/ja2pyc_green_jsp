<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includeFile.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive - Include File Main</title>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%
	out.println("오늘 날짜 : " + today + "</br>");
	out.println("내일 날짜 : " + tomorrow);
	%>
	<%@ include file="../footer.jsp" %>
</body>
</html>