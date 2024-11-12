<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Response Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Response Main</h1>
		<hr>
		<div>
			<h2>Login Form</h2>
			<div>
				<%
				String loginErr = request.getParameter("loginErr");
				if (loginErr != null)
					out.print("로그인 실패");
				%>
			</div>
			<div>
				<form action="./responseLogin.jsp" method='post'>
					<div>
						<label>ID : </label><input type="text" name="user_id" />
					</div>
					<div>
						<label>PASSWORD : </label><input type="text" name="user_pwd" />
					</div>
					<input type='submit' value='로그인' />
				</form>
			</div>
		</div>
		<hr>
		<div>
			<h2>HTTP 응답 헤더 설정</h2>
			<div>
				<form action="responseHeader.jsp">
					<div>
						<label>날짜 형식 : </label><input type="text" name="add_date"
							value="2021-10-25 09:00" />
					</div>
					<div>
						<label>숫자 형식 : </label><input type='text' name='add_int'
							value='8282' />
					</div>
					<div>
						<label>문자 형식 : </label><input type='text' name='add_str'
							value='홍길동' />
					</div>
					<div>
						<input type='submit' value='응답 헤더 설정 & 출력' />
					</div>
				</form>
			</div>
		</div>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>