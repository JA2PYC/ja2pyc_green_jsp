<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet - HelloServlet</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Hello Servlet</h1>
		<hr>
		<div>
			<h2>web.xml 매핑 후 JSP 출력</h2>
			<div>
				<p><%=request.getAttribute("message")%></p>
				<a href="./HelloServlet.do">HelloServlet.do</a>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>