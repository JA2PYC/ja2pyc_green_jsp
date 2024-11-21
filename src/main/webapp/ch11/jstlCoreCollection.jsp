<%@ page import='java.util.Map'%>
<%@ page import='java.util.HashMap'%>
<%@ page import='java.util.Vector'%>
<%@ page import='java.util.List'%>
<%@ page import='java.util.ArrayList'%>
<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='jakarta.tags.core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - Core Collection</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Core Collection</h1>
		<hr>
		<div>
			<h2>List Collection</h2>
			<div>
				<%
				ArrayList<Person> plist = new ArrayList<Person>();
				plist.add(new Person("성삼문", 55));
				plist.add(new Person("박행년", 60));
				%>
				<c:set var='personList' value='<%=plist%>' scope='request'></c:set>
				<ul>
					<li>이름 : ${requestScope.personList[0].name }</li>
					<li>나이 : ${personList[0].age }</li>
					<li>이름 : ${requestScope.personList[1].name }</li>
					<li>나이 : ${personList[1].age }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Map Collection</h2>
			<div>
				<%
			Map<String, Person> pMap = new HashMap<>();
			pMap.put("personArgs1", new Person("아위지", 65));
			pMap.put("personArgs2", new Person("이개", 67));
			%>
				<c:set var='personMap' value='<%=pMap %>' scope='request'></c:set>
				<ul>
					<li>이름 : ${requestScope.personMap.personArgs1.name }</li>
					<li>나이 : ${personMap["personArgs1"].age }</li>
					<li>이름 : ${requestScope.personMap['personArgs2'].name }</li>
					<li>나이 : ${personMap["personArgs2"].age }</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>