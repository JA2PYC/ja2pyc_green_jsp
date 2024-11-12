<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int pInteger2 = (Integer) (pageContext.getAttribute("pageInteger"));
Person pPerson2 = (Person) (pageContext.getAttribute("pagePerson"));
%>
<h1>Page Include</h1>
<hr>
<div>
	<h2>Include Page</h2>
	<div>
		<ul>
			<li>Integer 객체 : <%=pInteger2%></li>
			<li>String 객체 : <%=pageContext.getAttribute("pageString")%></li>
			<li>Person 객체 : <%=pPerson2.getName()%>, <%=pPerson2.getAge()%></li>
		</ul>
	</div>
	<hr>
	<div>
		<h2>Include Test</h2>
		<div>
			<%=pInteger%>
		</div>
	</div>
	<hr>
</div>
