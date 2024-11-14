<%@ page import='java.util.Date'%>
<%@ page import='java.text.SimpleDateFormat'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");

long creationTime = session.getCreationTime();
String creationTimeStr = dateFormat.format(new Date(creationTime));

long lastTime = session.getLastAccessedTime();
String lastTimeStr = dateFormat.format(new Date(lastTime));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session - Session Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Session Main</h1>
		<hr>
		<div>
			<ul>
				<li>세션 유지 시간 : <%=session.getMaxInactiveInterval()%></li>
				<li>세션 아이디 : <%=session.getId() %></li>
				<li>최초 요청 시간 : <%=creationTimeStr %></li>
				<li>마지막 요청 시간 : <%=lastTimeStr %></li>
			</ul>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>