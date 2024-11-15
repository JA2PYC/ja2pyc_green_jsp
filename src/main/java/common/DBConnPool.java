package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnPool {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

	public DBConnPool() {
		try {
			Context initCtx = new InitialContext();
			Context ctx = (Context) initCtx.lookup("java:comp/env");
			DataSource source = (DataSource) ctx.lookup("dbcp_ja2pyc_jsp");

			con = source.getConnection();

			System.out.println("DB 커넥션 풀 연결 성공");
		} catch (Exception e) {
			System.out.println("DB 커넥션 풀 연결 실패");
			e.printStackTrace();
		}
	}

	public void closeDBCP() {
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
				System.out.println("Close Prepared Statement");
				psmt.close();
			}
			if (con != null) {
				System.out.println("Close Connection");
				con.close();
			}
			System.out.println("Cloase DBCP");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
