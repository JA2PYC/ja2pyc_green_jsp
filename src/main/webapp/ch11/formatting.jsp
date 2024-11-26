<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>JSTL - Formatting</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Formatting</h1>
		<hr>
		<div>
			<h2>fmt:formatNumber</h2>
			<c:set var='number1' value='12345'></c:set>
			<div>
				<p>
					default :
					<fmt:formatNumber value='${number1 }'></fmt:formatNumber>
				</p>
				<p>
					groupingUsed='false' :
					<fmt:formatNumber value='${number1 }' groupingUsed="false"></fmt:formatNumber>
				</p>
				<fmt:formatNumber value='${number1 }' type='currency'
					var='printNum1'></fmt:formatNumber>
				<p>type='currency' var='printNum1' : ${printNum1 }</p>
				<fmt:formatNumber value='0.03' type='percent' var='printNum2'></fmt:formatNumber>
				<p>type='percent' var='printNum2' : ${printNum2 }</p>
			</div>
		</div>
		<hr>
		<div>
			<h2>fmt:parseNumber</h2>
			<c:set var='number2' value='6,789.01'></c:set>
			<div>
				<fmt:parseNumber value='${number2 }' pattern='00,000.00'
					var='printNum3'></fmt:parseNumber>
				<p>pattern='00,000.00' var='printNum3' : ${printNum3 }</p>
				<fmt:parseNumber value='${number2 }' integerOnly='true'
					var='printNum4'></fmt:parseNumber>
				<p>integerOnly='true' var='printNum4' : ${printNum4 }</p>
			</div>
		</div>
		<hr>
		<div>
			<h2>fmt:formatDate</h2>
			<c:set var='today' value='<%=new java.util.Date()%>'></c:set>
			<div>
				<ul>
					<li>type='date'</li>
					<li>dateStyle='default' : <fmt:formatDate value="${today }"
							type='date' dateStyle='default' /></li>
					<li>dateStyle='short' : <fmt:formatDate value="${today }"
							type='date' dateStyle='short' /></li>
					<li>dateStyle='long' : <fmt:formatDate value="${today }"
							type='date' dateStyle='long' /></li>
					<li>dateStyle='full' : <fmt:formatDate value="${today }"
							type='date' dateStyle='full' /></li>
				</ul>
				<ul>
					<li>type='time'</li>
					<li>timeStyle='default' : <fmt:formatDate value="${today }"
							type='time' timeStyle='default' /></li>
					<li>timeStyle='short' : <fmt:formatDate value="${today }"
							type='time' timeStyle='short' /></li>
					<li>timeStyle='long' : <fmt:formatDate value="${today }"
							type='time' timeStyle='long' /></li>
					<li>timeStyle='full' : <fmt:formatDate value="${today }"
							type='time' timeStyle='full' /></li>
				</ul>
				<ul>
					<li>type='both'</li>
					<li>dateStyle='full' timeStyle='full' : <fmt:formatDate
							value="${today }" type='both' dateStyle='full' timeStyle='full' /></li>
					<li>pattern="yyyy-MM-dd hh:mm:ss" : <fmt:formatDate
							value="${today }" type='both' pattern='yyyy-MM-dd hh:mm:ss' /></li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>fmt:timeZone</h2>
			<div>
				<ul>
					<fmt:timeZone value="GMT">
						<li><fmt:formatDate value="${today }" type='both'
								dateStyle='full' timeStyle='full' /></li>
					</fmt:timeZone>
					<fmt:timeZone value="America/Chicago">
					<li><fmt:formatDate value="${today }" type='both' dateStyle='full' timeStyle='full' /></li>
					</fmt:timeZone>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>