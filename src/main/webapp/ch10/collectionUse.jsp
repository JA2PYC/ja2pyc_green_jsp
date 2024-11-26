<%@ page import='java.util.Map'%>
<%@ page import='java.util.HashMap'%>
<%@ page import='java.util.List'%>
<%@ page import='java.util.ArrayList'%>
<%@ page import='common.Person'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>EL - Collection Use</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Collection Use</h1>
		<hr>
		<div>
			<h2>List Collection</h2>
			<%
			List<Object> aList = new ArrayList<>();
			aList.add("청해진");
			aList.add(new Person("장보고", 28));
			pageContext.setAttribute("Ocean", aList);
			%>
			<div>
				<ul>
					<li>List[0] : ${Ocean[0] }</li>
					<li>List[1] : ${Ocean[1] }, ${Ocean[1].name }, ${Ocean[1].age }</li>
					<li>List[2] : ${Ocean[2] }</li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>Map Collection</h2>
			<%
			Map<String, String> map = new HashMap<>();
			map.put("한글", "훈민정음");
			map.put("Eng", "English");
			pageContext.setAttribute("mapCollection", map);
			%>
			<div>
				<ul>
					<li>mapCollection : ${mapCollection["한글"] }, ${mapCollection['한글'] }</li>
					<li>mapCollection : ${mapCollection["Eng"] }, ${mapCollection['Eng'] }, ${mapCollection.Eng }</li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>