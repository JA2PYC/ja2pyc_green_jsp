<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setAttribute("requestString", "request 영역의 문자열");
request.setAttribute("requestPerson", new Person("안중근", 31));
Person rPerson = (Person) (request.getAttribute("requestPerson"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope - Request Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Request Main</h1>
		<hr>
		<div>
			<h2>Request 영격의 속성 값 지우기</h2>
			<div>
				<ul>
					<li>String 객체 : <%=request.getAttribute("requestString")%></li>
					<li>Person 객체 : <%=rPerson.getName()%>, <%=rPerson.getAge()%></li>
				</ul>
				<%
				request.removeAttribute("requestString");
				request.removeAttribute("requestInteger");
				%>
			</div>
		</div>
		<hr>
		<div>
			<h2>Request 영역의 속성 값 읽기</h2>
			<div>
				<ul>
					<li>String 객체 : <%=request.getAttribute("requestString")%></li>
					<li>Person 객체 : <%=rPerson.getName()%>, <%=rPerson.getAge()%></li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Forward 된 페이지에서 Request 영역 속성 값 읽기</h2>
			<div>
				<%
				request.getRequestDispatcher("requestForward.jsp?paramHan=한글&paramEng=English").forward(request, response);
				%>
			</div>
		</div>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>