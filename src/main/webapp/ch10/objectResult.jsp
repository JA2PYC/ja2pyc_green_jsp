<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>EL - Object Result</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Object Result</h1>
		<hr>
		<div>
			<h2>Scope Variables</h2>
			<div>
				<ul>
					<li>Person : ${personObj.name }, ${personObj.age }</li>
					<li>String : ${requestScope.stringObj }</li>
					<li>Integer : ${integerObj }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Parameter Variables</h2>
			<div>
				<ul>
					<li>${param.firstNum + param['secondNum'] }</li>
					<li>${param.firstNum } + ${param["secondNum"] }</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>