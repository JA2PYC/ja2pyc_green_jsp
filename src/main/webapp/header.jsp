<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/base_style.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/header.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/header.js"></script>
<header>
	<div class="header_title">JSP Header</div>
	<div class='header_nav'>
		<jsp:include page="/nav_menu.jsp"></jsp:include>
	</div>
</header>