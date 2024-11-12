<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Out Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Out Main</h1>
		<hr>
		<div>
			<%
			out.flush();
			out.print("출력되지 않는 텍스트");
			out.clearBuffer();

			out.print("<h2>Out 내장 객체</h2>");
			out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br />");
			out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br />");
			
			out.flush();
			out.print("Flush 후 버퍼의 크기 : " + out.getRemaining() + "<br />");
			
			out.print(1);
			out.print(false);
			out.print('가');
			%>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>