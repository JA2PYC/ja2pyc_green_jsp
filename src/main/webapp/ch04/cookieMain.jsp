<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Cookie cookie = new Cookie("myCookie", "쿠키맛있어요.");
cookie.setPath(request.getContextPath());
cookie.setMaxAge(3600);
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie - Cookie Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Cookie Main</h1>
		<hr>
		<div>
			<h2>쿠키 설정 직후 쿠키값 확인하기</h2>
			<%
			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (Cookie c : cookies) {
					String cookieName = c.getName();
					String cookieValue = c.getValue();
					out.print(String.format("%s : %s<br/>", cookieName, cookieValue));
				}
			}
			%>
		</div>
		<hr>
		<div>
			<h2>페이지 이동 후 쿠키 값 확인하기</h2>
			<div><a href = 'cookieResult.jsp'>쿠키 확인 페이지</a></div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>