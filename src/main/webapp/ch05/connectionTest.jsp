<%@ page import='common.JDBConnect'%>
<%@ page import='common.DBConnPool'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB - Connection Test</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Connection Test</h1>
		<hr>
		<div>
			<h2>JDBC Test</h2>
			<div>
				<%
				JDBConnect jdbc = new JDBConnect();
				jdbc.closeJDBC();
				%>
			</div>
		</div>
		<hr>
		<div>
			<h2>JDBC Test by web.xml</h2>
			<div>
				<%
				String driver = application.getInitParameter("MysqlDriver");
				String url = application.getInitParameter("MysqlURL");
				String id = application.getInitParameter("MysqlId");
				String pwd = application.getInitParameter("MysqlPwd");

				JDBConnect jdbc_webxml = new JDBConnect(driver, url, id, pwd);
				jdbc_webxml.closeJDBC();
				%>
			</div>
		</div>
		<hr>
		<div>
			<h2>JDBC Test by application</h2>
			<div>
				<%
				JDBConnect jdbc_app = new JDBConnect(application);
				jdbc_app.closeJDBC();
				%>
			</div>
		</div>
		<hr>
		<div>
			<h2>DBCP Test</h2>
			<div>
				<%
				DBConnPool pool = new DBConnPool();
				pool.closeDBCP();
				%>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>