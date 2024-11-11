<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import='java.util.Enumeration'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Request Header</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h2>Request Header</h2>
		<hr>
		<div><p>파일을 직접 실행하면 Referer 정보는 출력되지 않습니다.</p></div>
		<div>
			<%
			Enumeration headers = request.getHeaderNames();
			while (headers.hasMoreElements()) {
				String headerName = (String)headers.nextElement();
				String headerValue = request.getHeader(headerName);
				out.print("헤더명 : " + headerName + "헤더값 : " + headerValue + "<br/>");
			}
			%>
		</div>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>