<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet - Direct Servlet Print</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Direct Servlet Print</h1>
		<hr>
		<div>
			<h2>Servlet 출력</h2>
			<div>
				<form action="<%=request.getContextPath() %>/ch12/DirectServletPrint.do" method='post'>
					<input type='submit' value='Servlet 실행' />
				</form>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>