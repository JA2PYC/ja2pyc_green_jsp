<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Parameter Forward</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Parameter Forward</h1>
		<hr>
		<div>
			<h2>포워드 된 페이지에서 매개변수 확인</h2>
			<jsp:useBean id="person" class='common.Person' scope='request'></jsp:useBean>
			<div>
				<ul>
					<li>이름 : <jsp:getProperty property="name" name="person" /></li>
					<li>나이 : <jsp:getProperty property="age" name="person" /></li>
					<li>본명 : <%=request.getParameter("param1")%></li>
					<li>출생 : <%=request.getParameter("param2")%></li>
					<li>특징 : <%=request.getParameter("param3")%></li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>