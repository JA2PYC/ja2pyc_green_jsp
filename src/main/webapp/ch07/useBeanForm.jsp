<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Use Bean Form</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Use Bean Form</h1>
		<hr>
		<div>
			<h2>Form Bean</h2>
			<div>
				<form action="useBeanAction.jsp">
					<div>
						<label>ID : </label><input type='text' name='name'>
					</div>
					<div>
						<label>Age : </label><input type='text' name='age'>
					</div>
					<div>
						<input type='submit' value='전송'>
					</div>
				</form>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>