<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - Choose When Otherwise</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Choose When Otherwise</h1>
		<hr>
		<div>
			<h2>Choose When Otherwise</h2>
			<c:set var='number' value='100'></c:set>
			<div>
				<c:choose>
					<c:when test="${number mod 2 eq 0 }">${number }는 짝수 입니다.</c:when>
					<c:otherwise>${number }는 홀수 입니다.</c:otherwise>
				</c:choose>
			</div>
		</div>
		<hr>
		<div>
			<h2>국, 영, 수 점수를 입력하면 평균을 내어 학점 출력</h2>
			<div>
				<form>
					<table>
						<tbody>
							<tr>
								<td>국어 : <input type='text' name='kor' /></td>
							</tr>
							<tr>
								<td>영어 : <input type='text' name='eng' /></td>
							</tr>
							<tr>
								<td>수학 : <input type='text' name='math' /></td>
							</tr>
							<tr>
								<td><input type='submit' value='제출'></td>
							</tr>
						</tbody>
					</table>
				</form>
				<c:if
					test="${not (empty param.kor or empty param.eng or empty param.math) }">
					<c:set var='avg'
						value='${(param.kor + param.eng + param.math) / 3 }'></c:set>
						평균 점수는 ${avg }점 으로
					<c:choose>
						<c:when test="${avg >= 90 }">A 학점</c:when>
						<c:when test="${avg >= 80 }">B 학점</c:when>
						<c:when test="${avg >= 70 }">C 학점</c:when>
						<c:when test="${avg >= 60 }">D 학점</c:when>
						<c:otherwise>F 학점</c:otherwise>
					</c:choose>
					입니다.
				</c:if>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>