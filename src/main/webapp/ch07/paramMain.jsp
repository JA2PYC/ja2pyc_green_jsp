<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String pValue = "방랑시인";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Parameter Main</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Parameter Main</h1>
		<hr>
		<div>
			<h2>JSP : Forward</h2>
			<div>
				<jsp:useBean id="person" class='common.Person' scope='request'></jsp:useBean>
				<jsp:setProperty property="name" name="person" value='김삿갓' />
				<jsp:setProperty property="age" name="person" value='56' />
				<jsp:forward page="paramForward.jsp?param1=김병연">
					<jsp:param value="경기도 양주" name="param2" />
					<jsp:param value="<%=pValue%>" name="param3" />
				</jsp:forward>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>