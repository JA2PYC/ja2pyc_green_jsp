<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive - page import</title>
</head>
<body>
	<%
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
		String todayStr = dateFormat.format(today);
		out.println("오늘 날짜 : " + todayStr);
	%>
</body>
</html>