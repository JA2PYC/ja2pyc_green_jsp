<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2>외부 파일 2</h2>
<%
String newVar2 = "백제 온조왕";
%>
<ul>
	<li>Page 영역 속성 : <%=pageContext.getAttribute("pAttr")%></li>
	<li>Request 영역 속성 : <%=request.getAttribute("rAttr")%></li>
</ul>
