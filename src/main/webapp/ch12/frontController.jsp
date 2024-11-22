<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet - Front Controller</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Front Controller</h1>
		<hr>
		<div>
			<h2>Multiple Mapping</h2>
			<div>
				<div>URI : ${uri }</div>
				<div>Request : ${commandStr }</div>
				<div>Result : ${resultValue }</div>
				<ul>
					<li><a href='<%=request.getContextPath()%>/ch12/regist.one'>회원가입</a></li>
					<li><a href='<%=request.getContextPath()%>/ch12/login.one'>로그인</a></li>
					<li><a
						href='<%=request.getContextPath()%>/ch12/freeboard.one'>자유
							게시판</a></li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>