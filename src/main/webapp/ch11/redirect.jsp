<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>JSTL - Redirect</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Redirect</h1>
		<hr>
		<div>
			<h2>c:redirect</h2>
			<div>
				<c:set var='requestVar' value='JSP' scope='request'></c:set>
				<c:redirect url='/ch11/inc/outerPage.jsp'>
					<c:param name="user_param1" value='JSP'></c:param>
					<c:param name="user_param2" value='JSTL'></c:param>
				</c:redirect>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>