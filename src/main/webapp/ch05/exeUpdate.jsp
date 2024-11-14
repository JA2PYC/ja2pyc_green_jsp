<%@ page import='java.sql.PreparedStatement'%>
<%@ page import='java.sql.Connection'%>
<%@ page import='common.JDBConnect'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB - Execute Update</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Execute Update</h1>
		<hr>
		<div>
			<h2>회원 추가</h2>
			<%
			JDBConnect jdbc = new JDBConnect();
			String id = "test2";
			String pass = "2222";
			String name = "테스트 외원 2";

			String sql = "INSERT INTO member VALUES (?, ?, ?, (CURRENT_DATE))";
			PreparedStatement psmt = jdbc.con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pass);
			psmt.setString(3, name);

			int inResult = psmt.executeUpdate();
			out.println(inResult + "행이 입력되었습니다.");

			jdbc.closeJDBC();
			%>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>