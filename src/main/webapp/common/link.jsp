<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel='stylesheet' type='text/css' href='<%=request.getContextPath()%>/common/css/link.css' />
<table class='common_link'>
	<tr>
		<td>
			<%
			if (session.getAttribute("UserId") == null) {
			%><a href='../ch06/loginForm.jsp'>로그인</a>
			<%
			} else {
			%><a href='../ch06/logout.jsp'>로그아웃</a>
			<%
			}
			%>
		</td>
		<td>
		<a href='../ch08/list.jsp'>게시판</a>
		</td>
		<td>
		<a href='../ch09/list.jsp'>게시판 (페이지)</a>
		</td>
	</tr>
</table>
