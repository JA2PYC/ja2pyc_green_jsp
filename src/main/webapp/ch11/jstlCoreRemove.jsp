<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - Core Remove</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Core Remove</h1>
		<hr>
		<div>
			<h2>Set Variables</h2>
			<div>
				<c:set var='scopeVar' value='Page Value'></c:set>
				<c:set var='scopeVar' value='Request Value' scope='request'></c:set>
				<c:set var='scopeVar' value='Session Value' scope='session'></c:set>
				<c:set var='scopeVar' value='Application Value' scope='application'></c:set>
				<ul>
					<li>Page Scope Value : ${pageScope.scopeVar }</li>
					<li>Request Scope Value : ${requestScope.scopeVar }</li>
					<li>Session Scope Value : ${sessionScope.scopeVar }</li>
					<li>Application Scope Value : ${applicationScope.scopeVar }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Remove Scope</h2>
			<div>
				<c:remove var="scopeVar" scope="session" />
				<ul>
					<li>Page Scope Value : ${pageScope.scopeVar }</li>
					<li>Request Scope Value : ${requestScope.scopeVar }</li>
					<li>Session Scope Value : ${sessionScope.scopeVar }</li>
					<li>Application Scope Value : ${applicationScope.scopeVar }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Remove All</h2>
			<div>
			<c:remove var="scopeVar"/>
				<ul>
					<li>Page Scope Value : ${pageScope.scopeVar }</li>
					<li>Request Scope Value : ${requestScope.scopeVar }</li>
					<li>Session Scope Value : ${sessionScope.scopeVar }</li>
					<li>Application Scope Value : ${applicationScope.scopeVar }</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>