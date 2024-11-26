<%@ page import='java.util.Map'%>
<%@ page import='java.util.HashMap'%>
<%@ page import='common.Person'%>
<%@ page import='java.util.LinkedList'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>JSTL - forEach</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>forEach</h1>
		<hr>
		<div>
			<h2>forEach - for</h2>
			<div>
				<c:forEach begin='1' end='3' step='1' var='i'>
					<p>반복 ${i }입니다.</p>
				</c:forEach>
			</div>
		</div>
		<hr>
		<div>
			<h2>forEach - for :</h2>
			<%
			String[] rgba = { "Red", "Green", "Blue", "Black" };
			%>
			<div>
				<c:forEach items='<%=rgba%>' var='c'>
					<span style='color:${c};'>${c }</span>
				</c:forEach>
			</div>
		</div>
		<hr>
		<div>
			<h2>forEach - varStatus</h2>
			<div>
				<table>
					<c:forEach begin='3' end='5' step='1' varStatus='loop'>
						<tr>
							<td>count : ${loop.count } &nbsp;</td>
							<td>index : ${loop.index } &nbsp;</td>
							<td>current : ${loop.current } &nbsp;</td>
							<td>first : ${loop.first } &nbsp;</td>
							<td>last : ${loop.last } &nbsp;</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<hr>
		<div>
			<h2>foEach - Sum Value</h2>
			<div>
				<c:forEach begin='1' end='100' var='i'>
					<c:if test="${i mod 2 ne 0 }">
						<c:set var='sum' value='${sum + i }'></c:set>
					</c:if>
				</c:forEach>
				<p>1부터 100사이의 정수 중 홀수의 합? ${sum }</p>
			</div>
		</div>
		<hr>
		<div>
			<h2>forEach - List Collection</h2>
			<%
			LinkedList<Person> lists = new LinkedList<>();
			lists.add(new Person("맹사성", 34));
			lists.add(new Person("장영실", 44));
			lists.add(new Person("신숙주", 54));
			%>
			<c:set var='lists' value='<%=lists%>'></c:set>
			<div>
				<ul>
					<c:forEach items='${lists}' var='list'>
						<li>이름 : ${list.name }, 나이 : ${list.age }</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<h2>forEach - Map Collection</h2>
			<%
			Map<String, Person> maps = new HashMap<>();
			maps.put("1st", new Person("맹사성", 34));
			maps.put("2nd", new Person("장영실", 44));
			maps.put("3rd", new Person("신숙주", 54));
			%>
			<c:set var='maps' value='<%=maps%>'></c:set>
			<div>
			<ul>
				<c:forEach items='${maps }' var='map'>
					<li>Key => ${map.key }, Value => 이름 : ${map.value.name }, 나이 : ${map.value.age }</li>				
				</c:forEach>
			</ul>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>