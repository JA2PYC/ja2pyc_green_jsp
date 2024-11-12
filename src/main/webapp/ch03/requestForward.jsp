<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Person pPerson = (Person) (request.getAttribute("requestPerson"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Request Forward</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Request Forward</h1>
		<hr>
		<div>
			<h2>리퀘스트 영역의 속성 읽기</h2>
			<div>
				<ul>
					<li>String 객체 : <%=request.getAttribute("requestString")%></li>
					<li>Person 객체 : <%=pPerson.getName()%>, <%=pPerson.getAge()%></li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>매개변수로 전달된 값 출력하기</h2>
			<div>
			<%
			request.setCharacterEncoding("UTF-8");
			out.println(request.getParameter("paramHan"));
			out.println(request.getParameter("paramEng"));	
			%></div>
		</div>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>