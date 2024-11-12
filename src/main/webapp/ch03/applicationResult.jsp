<%@ page import='java.util.Set'%>
<%@ page import='java.util.Map'%>
<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Map<String, Person> maps = (Map<String, Person>) application.getAttribute("maps");
Set<String> keys = maps.keySet();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Application Result</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Application Result</h1>
		<hr>
		<div>
			<h2>Application 영역의 속성 값 읽기</h2>
			<div>
				<%
					for (String key : keys) {
						Person person = maps.get(key);
						out.println(String.format("이름 : %s, 나이 : %d", person.getName(), person.getAge()));
					}
				%>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>