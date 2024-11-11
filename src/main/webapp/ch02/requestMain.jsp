<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Request</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<main>
		<h1>Implicit Object - Request</h1>
		<hr>
		<div>
			<h2>Request</h2>
			<div>
				<a href="./requestWebInfo.jsp?eng=Hello&han=안녕">GET 전송</a>
			</div>
			<div>
				<form action="./requestWebInfo.jsp" method="post">
					<div>
						<label>English : </label><input type="text" name="eng" value="Bye" />
					</div>
					<div>
						<label>Korean : </label><input type="text" name="han" value="안녕" />
					</div>
					<input type="submit" value="POST 전송" />
				</form>
			</div>
			<hr>
			<h2>Response</h2>
			<div>
				<form action="requestParameter.jsp" method="post">
					<div>
						<label>ID : </label><input type='text' name='id' value='' />
					</div>
					<div>
						<label>Gender : </label><input type='radio' name='sex'
							value='male' />남자<input type='radio' name='sex' value='female'
							checked='checked' />여자
					</div>
					<div>
						<label>Favorite : </label><input type='checkbox' name='favorite'
							value='economy' />경제<input type='checkbox' name='favorite'
							value='politics' />정치<input type='checkbox' name='favorite'
							value='entertainment' />연예
					</div>
					<div>
						<label>Describe : </label>
						<textarea name='describe' rows="5" cols="30"></textarea>
					</div>
					<div>
						<input type='submit' value='전송하기'>
					</div>
				</form>
			</div>
			<hr>
			<h2>Read Request Header</h2>
			<div>
				<a href='requestHeader.jsp'>헤더 정보 읽기</a>
			</div>
			<hr>
		</div>
	</main>
	<%@ include file="../footer.jsp"%>
</body>
</html>