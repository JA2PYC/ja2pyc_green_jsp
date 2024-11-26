<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>JSTL - Catch</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>JSTL - Catch</h1>
		<hr>
		<div>
			<h2>c:catch</h2>
			<%
			int num1 = 100;
			%>
			<div>
				<c:catch var='eMessage'>
					<%
					int result = num1 / 0;
					%>
				</c:catch>
				예외 : ${eMessage }
			</div>
		</div>
		<hr>
		<div>
			<h2>EL Exception</h2>
			<c:set var='num2' value='200'></c:set>
			<div>
				<c:catch var='eMessage'>
					${"일" + num2 }
				</c:catch>
				예외 : ${eMessage }
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>