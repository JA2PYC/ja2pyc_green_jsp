package servlet;

import java.io.IOException;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import membership.MemberDAO;
import membership.MemberDTO;

public class MemberAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MemberDAO dao;

	@Override
	public void init() throws ServletException {
		ServletContext application = this.getServletContext();

		String driver = application.getInitParameter("MysqlDriver");
		String connectUrl = application.getInitParameter("MysqlURL");
		String mysqlId = application.getInitParameter("MysqlId");
		String mysqlPw = application.getInitParameter("MysqlPwd");

		dao = new MemberDAO(driver, connectUrl, mysqlId, mysqlPw);
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String admin_id = this.getInitParameter("admin_id");

		String id = req.getParameter("id");
		String pw = req.getParameter("pw");

		MemberDTO memberDTO = dao.getMemberDTO(id, pw);
		String memberName = memberDTO.getName();

		if (memberName != null) {
			if (admin_id.equals(id))
				req.setAttribute("authMessage", admin_id + " 관리자 입니다.");
			else
				req.setAttribute("authMessage", memberName + "회원님 반갑습니다.");
		} else {
			req.setAttribute("authMessage", "회원이 아닙니다.");
		}

		req.getRequestDispatcher("/ch12/memberAuth.jsp").forward(req, resp);
	}

	@Override
	public void destroy() {
		dao.closeJDBC();
	}
}
