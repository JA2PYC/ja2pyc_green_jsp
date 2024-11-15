<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import='java.util.Collection'%>
<%@ page import='java.text.SimpleDateFormat'%>
<%
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
long add_date = s.parse(request.getParameter("add_date")).getTime();
int add_int = Integer.parseInt(request.getParameter("add_int"));
String add_str = request.getParameter("add_str");

response.addDateHeader("myBirthday", add_date);
response.addIntHeader("myNumber", add_int);
response.addIntHeader("myNumber", 1004);
response.addHeader("myName", add_str);
response.addHeader("myName", "안중군");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Response Header</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Response Header</h1>
		<hr>
		<div>
			<h2>Header Data</h2>
			<ul>
				<%
				Collection<String> headerNames = response.getHeaderNames();
				for (String hName : headerNames) {
					String hValue = response.getHeader(hName);
				%>
				<li><%=hName%> : <%=hValue%></li>
				<%
				}
				%>
			</ul>
		</div>
		<div>
			<h2>Header Data By Filter</h2>
			<%
			Collection<String> myNumber = response.getHeaders("myNumber");
			for (String myNum : myNumber) {
			%>
			<li>myNumber : <%=myNum%></li>
			<%
			}
			%>
		</div>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>