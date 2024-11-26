<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>JSTL - Out</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>JSTL - Out</h1>
		<hr>
		<div>
			<h2>c:out</h2>
			<c:set var='iTag'>i 태그는 <i>기울임</i>을 표현합니다.</c:set>
			<div>
				<c:out value="${iTag }"></c:out>
			</div>
		</div>
		<hr>
		<div>
			<h2>c:out escapeXml='false'</h2>
			<div>
				<c:out value="${iTag }" escapeXml="false"></c:out>
			</div>
		</div>
		<hr>
		<div>
			<h2>c:out default</h2>
			<div>
				<c:out value="${param.value }" default='값 없음'></c:out>
				<c:out value="" default='값 없음'></c:out>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>