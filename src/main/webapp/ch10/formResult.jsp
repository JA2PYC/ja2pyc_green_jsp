<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL - Form Result</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Form Result</h1>
		<hr>
		<div>
			<h2>Result</h2>
			<div>
				<ul>
					<li>이름 : ${ param.name }</li>
					<li>성별 : ${param.gender }</li>
					<li>학력 : ${param.grade }</li>
					<li>취미 : ${paramValues.hobby[0] }
					${paramValues.hobby[1] }
					${paramValues.hobby[2] }
					${paramValues.hobby[3] }
					</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>