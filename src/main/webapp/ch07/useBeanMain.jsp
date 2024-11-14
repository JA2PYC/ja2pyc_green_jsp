<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Use Bean Main</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Use Bean Main</h1>
		<hr>
		<div>
			<h2>자바 빈즈 생성하기</h2>
			<div>
				<jsp:useBean id='person' class='common.Person' scope='request'></jsp:useBean>
			</div>
		</div>
		<hr>
		<div>
			<h2>액션 태그로 자바 빈즈 속성 지정하기</h2>
			<div>
				<jsp:setProperty property="name" name="person" value="임꺽정" />
				<jsp:setProperty property="age" name="person" value="41" />
			</div>
		</div>
		<hr>
		<div>
			<h2>액션 태그로 자바 빈즈 속성 읽기</h2>
			<jsp:getProperty property="name" name="person"/>
			<jsp:getProperty property="age" name="person"/>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>