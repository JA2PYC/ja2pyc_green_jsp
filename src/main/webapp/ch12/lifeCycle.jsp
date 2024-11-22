<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet - Life Cycle</title>
<script type="text/javascript" src='./js/lifeCycle.js'></script>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Life Cycle</h1>
		<hr>
		<div>
			<h2></h2>
			<div>
				<form action="./LifeCycle.do">
					<input type='button' value='Get 요청하기' onclick='requestAction(this.form, 1);' />
					<input type='button' value='Post 요청하기' onclick='requestAction(this.form, 2);' />
				</form>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>