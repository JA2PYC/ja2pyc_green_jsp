<%@ page import='membership.MemberDAO'%>
<%@ page import='membership.MemberDTO'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String userId = request.getParameter("user_id");
String userPw = request.getParameter("user_pw");

String sqlDriver = application.getInitParameter("MysqlDriver");
String sqlUrl = application.getInitParameter("MysqlURL");
String sqlId = application.getInitParameter("MysqlId");
String sqlPw = application.getInitParameter("MysqlPwd");

MemberDAO dao = new MemberDAO(sqlDriver, sqlUrl, sqlId, sqlPw);
MemberDTO memberDTO = dao.getMemberDTO(userId, userPw);
dao.closeJDBC();

if (memberDTO.getId() != null) {
	session.setAttribute("UserId", memberDTO.getId());
	session.setAttribute("UserName", memberDTO.getName());
	response.sendRedirect("loginForm.jsp");
} else {
	request.setAttribute("LoginErrMsg", "로그인 오류입니다." + memberDTO.getId());
	request.getRequestDispatcher("loginForm.jsp").forward(request, response);
}
%>