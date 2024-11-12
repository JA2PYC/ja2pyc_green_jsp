<%@ page import='java.util.Map'%>
<%@ page import='java.util.HashMap'%>
<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Map<String, Person> maps = new HashMap<>();
maps.put("actor1", new Person("이수일", 30));
maps.put("actor2", new Person("심순애", 28));
application.setAttribute("maps", maps);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Application Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Application Main</h1>
		<hr>
		<div>
			<h2>Application 영역 공유</h2>
			<div>Application 영역에 속성이 저장되었습니다.</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>