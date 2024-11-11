<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ja2pyc_green_jsp.Calculator"%>
<%!public int sum() {
		int sum = 0;
		for (int i = 0; i < 100; i++) {
			sum += (i + 1);
		}
		return sum;
	}

	public int sumInt(int intValue) {
		int sum = 0;
		for (int i = 0; i < intValue; i++) {
			sum += (i + 1);
		}
		return sum;
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive - Script Elements</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<main>
		<h1>Directive - Script Elements</h1>
		<hr>
		<div>
			<%
			int total = sum();
			out.println("1부터 100까지의 합 : " + total);
			%>
			<div>
				1부터 100까지의 합은
				<%=total%>
				입니다.
			</div>
		</div>
		<div>
			<%
			int targetInt = 13;
			int totalInt = sumInt(targetInt);
			out.println("1부터 " + targetInt+"까지의 합 : " + totalInt);
			%>
		</div>
		<div>
			<%
			Calculator newCalculator = new Calculator();
			String str = newCalculator.getVersion();
			out.println(str);
			%>
		</div>
	</main>
	<%@ include file="../footer.jsp"%>
</body>
</html>