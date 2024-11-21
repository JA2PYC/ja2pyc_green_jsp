<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL - Implicit Forward Result</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Implicit Forward Result</h1>
		<hr>
		<div>
			<h2>Forward Result</h2>
			<div>
				<ul>
					<li>페이지 영역 : ${ pageScope.scopeValue }</li>
					<li>리퀘스트 영역 : ${ requestScope.scopeValue }</li>
					<li>세션 영역 : ${ sessionScope.scopeValue }</li>
					<li>애플리케이션 영역 : ${ applicationScope.scopeValue }</li>
					<li>기본 호출 : ${ scopeValue }</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>