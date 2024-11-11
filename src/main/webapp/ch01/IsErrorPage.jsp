<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="IsErrorPage.jsp" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive - Is Error Page</title>
</head>
<body>
	<h2>서비스 중 오류가 발생하였습니다.</h2>
	<p>
		오류명 : <%= exception.getClass().getName() %> <br>
		오류 메시지 : <%= exception.getMessage() %>
	</p>
</body>
</html>