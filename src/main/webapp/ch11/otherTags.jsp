<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>JSTL - Other Tags</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Other Tags</h1>
		<hr>
		<div>
			<h2>c:import - outerPage</h2>
			<c:set var='requestVar' value='JSP' scope='request'></c:set>
			<c:import url="/ch11/inc/outerPage.jsp" var='outerPage'>
				<c:param name="user_param1" value='JSP'></c:param>
				<c:param name="user_param2">JSTL</c:param>
			</c:import>
			<div>${outerPage }</div>
		</div>
		<hr>
		<div>
			<h2>c:import - externalPage</h2>
			<div>
				<c:import url="/ch11/inc/externalPage.jsp"></c:import>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>