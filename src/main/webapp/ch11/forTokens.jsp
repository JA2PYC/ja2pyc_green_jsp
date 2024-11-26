<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>JSTL - forTokens</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>forTokens</h1>
		<hr>
		<div>
			<h2>forTokens items</h2>
			<%
			String rgba = "Red,Green,Blue,Black";
			%>
			<div>
				<c:forTokens items="<%=rgba%>" delims="," var='color'>
					<p style='color:${color};'>${color }</p>
				</c:forTokens>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>