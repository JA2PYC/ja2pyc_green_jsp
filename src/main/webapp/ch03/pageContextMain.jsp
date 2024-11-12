<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Page Context Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Page Context Main</h1>
		<hr>
		<div>
			<h2>Page 속성 값 읽기</h2>
			<%
			int pInteger = (Integer) (pageContext.getAttribute("pageInteger"));
			String pString = pageContext.getAttribute("pageString").toString();
			Person pPerson = (Person) (pageContext.getAttribute("pagePerson"));
			%>
			<ul>
				<li>Integer 객체 : <%=pInteger%></li>
				<li>String 객체 : <%=pString%></li>
				<li>Person 객체 : <%=pPerson.getName()%>, <%=pPerson.getAge()%></li>
			</ul>
		</div>
		<hr>
		<div>
			<h2>Include 파일 에서 Page 영역 읽어오기</h2>
			<div>
				<%@ include file='./pageInclude.jsp'%>
			</div>
		</div>
		<hr>
		<div>
			<h2>페이지 이동 후 Page 영역 읽어오기</h2>
			<div>
			<a href='./pageLocation.jsp'>Page Location</a>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>