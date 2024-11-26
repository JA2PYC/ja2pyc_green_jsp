<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>JSTL - Url</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>JSTL - Url</h1>
		<hr>
		<div>
			<h2>c:url</h2>
			<c:url value='/ch11/inc/outerPage.jsp' var='url'>
				<c:param name="user_param1" value='JSP'></c:param>
				<c:param name="user_param2" value='JSTL'></c:param>
			</c:url>
			<div>
			<a href='${url }'>outerPage.jsp</a>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>