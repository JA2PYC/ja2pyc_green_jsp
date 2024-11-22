<%@ page import='utils.CookieManager'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
CookieManager.makeCookie(response, "ELCookie", "ELCookieValue", 10);
%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>EL - Other Implicit Object</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Other Implicit Object</h1>
		<hr>
		<div>
			<h2>Cookies</h2>
			<div>EL Cookie Value : ${cookie.ELCookie.value }</div>
		</div>
		<hr>
		<div>
			<h2>Header</h2>
			<div>
				<ul>
					<li>host : ${header.host }</li>
					<li>user-agent : ${header['user-agent'] }</li>
					<li>cookie : ${header.cookie }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Init Parameter</h2>
			<div>Init Parameter : ${initParam.MysqlDriver }</div>
		</div>
		<hr>
		<div>
			<h2>Context Path</h2>
			<div>Context Path : ${pageContext.request.contextPath }</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>