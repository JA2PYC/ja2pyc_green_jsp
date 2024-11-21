<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- EL do not work with Directive  --%>
<%-- <%@ include file='${errorVal}' %> --%>
<%-- EL do not work with Declaration --%>
<%-- <%! void testMethod (${errorVar}){}%> --%>
<%-- EL do not work with Expression  --%>
<%-- <%= ${errorVar} %> --%>
<%
pageContext.setAttribute("scopeValue", "페이지 영역");
request.setAttribute("scopeValue", "리퀘스트 영역");
session.setAttribute("scopeValue", "세션 영역");
application.setAttribute("scopeValue", "애플리케이션 영역");
%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>Express Language - Implicit Object Main</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Implicit Object</h1>
		<hr>
		<div>
			<h2>EL</h2>
			<div>
				<ul>
					<li>페이지 영역 : ${pageScope.scopeValue}</li>
					<li>리퀘스트 영역 : ${requestScope.scopeValue}</li>
					<li>세션 영역 : ${sessionScope.scopeValue}</li>
					<li>애플리케이션 영역 : ${applicationScope.scopeValue}</li>
					<li>기본 호출 : ${scopeValue}</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>JSP : Forward Page</h2>
			<div><jsp:forward page="./implicitForwardResult.jsp"></jsp:forward></div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>