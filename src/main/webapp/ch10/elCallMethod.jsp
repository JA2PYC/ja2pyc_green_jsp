<%@ page import='el.MyELClass'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/MyTagLib.tld" prefix="mytag"%>
<%
MyELClass myClass = new MyELClass();
pageContext.setAttribute("pageClass", myClass);
%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>EL - Call Method</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Call Method</h1>
		<hr>
		<div>
			<h2>Call Instance Method</h2>
			<div>
				<ul>
					<li>1 : ${pageClass.getGender("123456-1234567") }</li>
					<li>2 : ${pageClass.getGender("123456-2234567") }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Call Static Method</h2>
			<div>
				<ul>
					<li>isNumber : ${MyELClass.isNumber("731") }</li>
					<li>구구단 : ${MyELClass.showGugudan(5) }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Call Taglib Method</h2>
			<div>
				<ul>
					<li>mytah:isNumber("100") => ${mytag:isNumber("100") }</li>
					<li>mytah:isNumber("이백") => ${mytag:isNumber("이백") }</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>