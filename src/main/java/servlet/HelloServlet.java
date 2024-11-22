package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet (HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException{
		req.setAttribute("message", "Hellow Servlet..!!");
		req.getRequestDispatcher("/ch12/helloServlet.jsp").forward(req, resp);
	}

}
