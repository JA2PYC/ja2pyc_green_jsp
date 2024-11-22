<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet - Member Auth</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Member Auth</h1>
		<hr>
		<div>
			<h2>MVC Member Auth</h2>
			<div>${authMessage }</div>
			<div>
				<div><a href='./MemberAuth.mvc?id=ja2pyc&pw=1234'>관리자</a></div>
				<div><a href='./MemberAuth.mvc?id=test1&pw=1234'>회원</a></div>
				<div><a href='./MemberAuth.mvc?id=guest&pw=1234'>비회원</a></div>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>