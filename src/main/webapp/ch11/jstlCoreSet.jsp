<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Tomcat v9 -->
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> --%>
<%@ page import='java.util.Date'%>
<%@ page import='common.Person'%>
<%@ taglib uri="jakarta.tags.core" prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - JSTL Main</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>JSTL Main</h1>
		<hr>
		<div>
			<h2>Core - Set</h2>
			<div>
				<c:set var='directVar' value='100'></c:set>
				<c:set var='elVar' value='${directVar mod 3 }'></c:set>
				<c:set var='expVar' value='<%=new Date()%>'></c:set>
				<c:set var='betweenVar'>변수 설정</c:set>

				<ul>
					<li>directVar : ${pageScope.directVar }</li>
					<li>elVar : ${elVar }</li>
					<li>expVar : ${expVar }</li>
					<li>betweenVar : ${betweenVar }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Core - Set Bean Constructor</h2>
			<div>
				<c:set var='personVar1' value='<%=new Person("박문수", 50)%>'
					scope='request'></c:set>
				<ul>
					<li>이름 : ${requestScope.personVar1.name }</li>
					<li>나이 : ${personVar1.age }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Core - Set Bean / Target, Property</h2>
			<div>
				<c:set var='personVar2' value='<%=new Person()%>' scope='request'></c:set>
				<c:set target='${personVar2 }' property='name' value='정약용'></c:set>
				<c:set target='${personVar2 }' property='age' value='60'></c:set>
				<ul>
				<li>이름 : ${requestScope.personVar2.name }</li>
				<li>나이 : ${personVar2.age }</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>