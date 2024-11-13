<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int status = response.getStatus();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Exception</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Exception</h1>
		<hr>
		<div>
			<h2>Error Code</h2>
			<div>
				<%
				if (status == 404) {
					out.println("404 에러가 발생 했습니다.<br/>");
					out.println("파일 경로를 확인해주세요.");
				} else if (status == 405) {
					out.println("405 에러가 발생 했습니다.<br/>");
					out.println("요청 방식(method)를 확인 해주세요.");
				} else if (status == 500) {
					out.println("500 에러가 발생 했습니다.<br/>");
					out.println("소스 코드에 오류가 없는지 확인해주세요.");
				}
				%>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>