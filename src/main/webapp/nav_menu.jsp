<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel='stylesheet' type='text/css'
	href='<%=request.getContextPath()%>/css/nav_menu.css'>
<nav class='nav_menu'>
	<ul>
		<li><a href='/'>Root</a></li>
		<li><a href='<%=request.getContextPath()%>'>JSP Project</a></li>
		<li><a href='./'>Current</a></li>
		<li><a href='../'>Parent</a></li>
		<li><a href='' onclick='windows.location.reload()'>Refresh</a></li>
	</ul>
</nav>