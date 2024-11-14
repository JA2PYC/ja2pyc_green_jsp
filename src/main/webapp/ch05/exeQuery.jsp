<%@ page import='java.sql.ResultSet'%>
<%@ page import='java.sql.Statement'%>
<%@ page import='java.sql.Connection'%>
<%@ page import='common.JDBConnect'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB - Execute Query</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Execute Query</h1>
		<hr>
		<div>
			<h2>회원 목록 조회</h2>
			<div>
			<%
			JDBConnect jdbc = new JDBConnect();
			
			String sql = "SELECT id, pass,name,regidate FROM ja2pyc_jsp.member";
			Statement stmt = jdbc.con.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String id =rs.getString(1);
				String pass = rs.getString(2);
				String name = rs.getString("name");
				java.sql.Date regidate = rs.getDate("regidate");
				
				out.println(String.format("%s, %s, %s, %s", id, pass, name, regidate) + "<br/>");
			}
			
			jdbc.closeJDBC();
			%>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>