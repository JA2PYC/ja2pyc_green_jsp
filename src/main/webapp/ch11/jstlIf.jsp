<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - IF</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>JSTL - IF</h1>
		<hr>
		<div>
			<h2>IF</h2>
			<div>
				<c:set var='number' value='100' scope='request'></c:set>
				<c:set var='string' value='JSP' scope='request'></c:set>
				<c:set var='stringJava' value='Java' scope='request'></c:set>
				<c:if test="${number mod 2 eq 0 }" var='result'>
					${number }는 짝수 입니다.<br />
				</c:if>
				<p>Result : ${result }</p>
			</div>
		</div>
		<hr>
		<div>
			<h2>IF ELSE</h2>
			<div>
				<c:if test="${string eq 'Java' }" var='stringTest'>${string }은 자바 입니다.</c:if>
				<c:if test="${ not stringTest }">자바가 아닙니다.</c:if>
				<p>${stringTest }</p>
				<c:if test=""></c:if>

			</div>
		</div>
		<hr>
		<div>
			<h2>IF NOT EL</h2>
			<div>
				<c:if test="100" var='ifnotel'>EL이 아닌 정수를 지정하면 False</c:if>
				<p>ifnotel : ${ifnotel }</p>
			</div>
		</div>
		<hr>
		<div>
			<h2>Case Letter</h2>
			<div>
				<c:if test="tRuE" var='trueTrue'>대소문자 구분 없이 True</c:if>
				<p>Case Letter : ${trueTrue }</p>
			</div>
		</div>
		<hr>
		<div>
			<h2>Empty Space Between ""</h2>
			<div>
				<c:if test="${true } " var='emptySpace'>EL 양쪽에 빈 공백이 있는 경우 False</c:if>
				<p>Empty Space : ${emptySpace }</p>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>