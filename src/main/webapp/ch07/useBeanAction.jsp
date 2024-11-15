<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Use Bean Action</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Use Bean Action</h1>
		<hr>
		<div>
			<h2>setProperty</h2>
			<jsp:useBean id="person" class='common.Person'></jsp:useBean>
			<jsp:setProperty property="*" name="person" />
			<div>
				<ul>
					<li>이름 : <jsp:getProperty property="name" name="person" /></li>
					<li>나이 : <jsp:getProperty property='age' name='person' /></li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>