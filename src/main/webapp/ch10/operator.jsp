<%@ page import='java.util.ArrayList'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int num1 = 3;
pageContext.setAttribute("num2", 4);
pageContext.setAttribute("num3", "5");
pageContext.setAttribute("num4", "8");
%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>EL - Operator</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Operator</h1>
		<hr>
		<div>
			<h2>Variables</h2>
			<div>
				<ul>
					<li>스크립틀릿 변수 : ${num1 }</li>
					<li>pageContext 변수 : ${num2 }</li>
					<li>변수 할당 및 출력 : ${num1 = 7 }</li>
					<li>변수 할당과 별도 출력 : ${num2 = 8;'' } => ${num2 }</li>
					<li>num1 = ${num1 }, num2 = ${num2 }, num3 = ${num3 }, num4 =
						${num4 }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>산술 연산자 (Arithmetic Operators)</h2>
			<div>
				<ul>
					<li>num1 + num2 : ${num1 + num2 }</li>
					<li>num1 - num2 : ${num1 - num2 }</li>
					<li>num1 * num2 : ${num1 * num2 }</li>
					<li>num3 / num4 : ${num3 / num4 }</li>
					<li>num3 div num4 : ${num3 div num4 }</li>
					<li>num3 % num4 : ${num3 % num4 }</li>
					<li>num3 mod num4 : ${num3 mod num4 }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>+ Operator</h2>
			<div>
				<ul>
					<li>num1 + 34 : ${num1 + 34 }</li>
					<li>num2 + "이십" : \${num1 + "이십" }</li>
					<li>"삼십" + "사십" : \${"삼십" + "사십" }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>비교 연산자 (Comparison Operator)</h2>
			<div>
				<ul>
					<li>num1 < num2 : ${num1 < num2 }</li>
					<li>num1 lt num2 : ${num1 lt num2 }</li>
					<li>num1 > num2 : ${num1 > num2 }</li>
					<li>num1 gt num2 : ${num1 gt num2 }</li>
					<li>num3 <= num4 : ${num3 <= num4 }</li>
					<li>num3 le num4 : ${num3 le num4 }</li>
					<li>num3 >= num4 : ${num3 >= num4 }</li>
					<li>num3 ge num4 : ${num3 ge num4 }</li>
					<li>num3 == num4 : ${num3 == num4 }</li>
					<li>num3 eq num4 : ${num3 eq num4 }</li>
					<li>num3 != num4 : ${num3 != num4 }</li>
					<li>num3 ne num4 : ${num3 ne num4 }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>논리 연산자 (Logical Operator)</h2>
			<div>
				<ul>
					<li>num3 <= num4 && num3 == num4 : ${num3 le num4 and num3 eq
						num4 }</li>
					<li>num3 >= num4 || num3 != num4 : ${num3 ge num4 or num3 ne num4 }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>삼항 연산자 (Conditional(Ternary) Operator)</h2>
			<%
			pageContext.setAttribute("num5", 9);
			pageContext.setAttribute("num6", 10);
			pageContext.setAttribute("nullStr", null);
			pageContext.setAttribute("emptyStr", "");
			pageContext.setAttribute("lengthZero", new Integer[0]);
			pageContext.setAttribute("sizeZero", new ArrayList<Object>());
			%>
			<div>
				<ul>
					<li>num5 gt num6 ? "참" : "거짓" => ${num5 gt num6 ? "num5가 크다." : "num6이 크다." }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>empty Operator</h2>
			<div>
				<ul>
					<li>empty nullStr : ${empty nullStr }</li>
					<li>empty emptyStr: ${empty emptyStr}</li>
					<li>empty lengthZero : ${empty lengthZero }</li>
					<li>empty sizeZero : ${empty sizeZero }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>null Operator</h2>
			<div>
				<ul>
					<li>null + 10 : \${null + 10 }</li>
					<li>nullStr + 10 : \${nullStr + 10 }</li>
					<li>param.noVar > 10 : \${param.noVar > 10 }</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>