<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Object pInteger = pageContext.getAttribute("pageInteger");
Object pString = pageContext.getAttribute("pageString");
Object pPerson = pageContext.getAttribute("pagePerson");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Page Location</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Page Location</h1>
		<hr>
		<div>
			<h2>Page 이동 후 Page 영역의 속성 값 읽기</h2>
			<div>
				<ul>
					<li>Integer 객체 : <%=(pInteger == null) ? "NULL" : pInteger%></li>
					<li>String 객체 : <%=(pString == null) ? "NULL" : pString%></li>
					<li>Person 객체 : <%=(pPerson == null) ? "NULL" : ((Person) pPerson).getName()%></li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>