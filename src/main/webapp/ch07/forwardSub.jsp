<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Forward Sub</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Forward Sub</h1>
		<hr>
		<div>
			<h2>포워드 결과</h2>
			<div>
				<ul>
				<li>Page 영역 : <%=pageContext.getAttribute("pAttr") %></li>
				<li>Request 영역 : <%=request.getAttribute("rAttr") %> </li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>