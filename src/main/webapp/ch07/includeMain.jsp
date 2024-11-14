<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String outerPath1 = "./inc/outerPage1.jsp";
String outerPath2 = "./inc/outerPage2.jsp";

pageContext.setAttribute("pAttr", "동명왕");
request.setAttribute("rAttr", "온조왕");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Include Main</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<main>
		<h1>Include Main</h1>
		<hr>
		<div>
			<h2>지시어와 액션 태그 동작 방식 비교</h2>
		</div>
		<hr>
		<div>
			<h3>지서어로 페이지 포함하기</h3>
			<div>
				<%@ include file='./inc/outerPage1.jsp'%>
				<p>
					외부 파일의 변수 :
					<%=newVar1%></p>
			</div>
		</div>
		<hr>
		<div>
			<h3>액션 태그로 페이지 포함하기</h3>
			<div>
				<jsp:include page="./inc/outerPage2.jsp"></jsp:include>
				<jsp:include page="<%=outerPath2%>"></jsp:include>
				<p>외부 파일의 변수 : <%--= newVar2 != null ? newVar2 : "Null"--%></p>
			</div>
		</div>
		<hr>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>