<%@ page import='java.util.ArrayList'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ArrayList<String> lists = new ArrayList<String>();
lists.add("리스트");
lists.add("컬렉션");
lists.add("김자바");
session.setAttribute("lists", lists);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Session Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Session Main</h1>
		<hr>
		<div>
			<h2>페이지 이동 후 Session 영역의 속성 읽기</h2>
			<div><a href='sessionLocation.jsp'>Session Location</a></div>
		</div>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>