<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setAttribute("personObj", new Person("홍길동", 33));
request.setAttribute("stringObj", "문자열");
request.setAttribute("integerObj", new Integer(99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL - Object Parameters</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Object Parameters</h1>
		<hr>
		<div>
			<jsp:forward page="./objectResult.jsp">
				<jsp:param value="10" name="firstNum" />
				<jsp:param value="20" name="secondNum" />
			</jsp:forward>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>