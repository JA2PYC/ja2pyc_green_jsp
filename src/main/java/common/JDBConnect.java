package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletContext;

public class JDBConnect {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

	public JDBConnect() {
		System.out.println("DB 연결 시작 (기본 생성자)");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3384/ja2pyc_jsp?serverTimezone=Asia/Seoul";
			String id = "ja2pyc";
			String pwd = "1120@ja2pyc";
			con = DriverManager.getConnection(url, id, pwd);

			System.out.println("DB 연결 성공 (기본 생성자)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public JDBConnect(String driver, String url, String id, String pwd) {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);

			System.out.println("DB 연결 성공 (인수 생성자)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("MysqlDriver");
			String url = application.getInitParameter("MysqlURL");
			String id = application.getInitParameter("MysqlId");
			String pwd = application.getInitParameter("MysqlPwd");

			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);

			System.out.println("DB 연결 성공 (Application 생성자)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void closeJDBC() {
		try {
			if (rs != null) {
				System.out.println("Close Result Set");
				rs.close();
			}
			if (stmt != null) {
				System.out.println("Close Statement");
				stmt.close();
			}
			if (psmt != null) {
				System.out.println("Close PreparedStatement");
				psmt.close();
			}
			if (con != null) {
				System.out.println("Close Connection");
				con.close();
			}

			System.out.println("JDBC 자연 해제");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
