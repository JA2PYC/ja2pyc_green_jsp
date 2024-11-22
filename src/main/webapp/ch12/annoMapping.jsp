<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet - Anno Mapping</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Annotation Mapping</h1>
		<hr>
		<div>
			<h2>AnnoMapping.do</h2>
			<div>
				<p>${message }</p>
				<a href='<%=request.getContextPath()%>/ch12/AnnoMapping.do'>AnnoMapping.do 바로가기</a>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>