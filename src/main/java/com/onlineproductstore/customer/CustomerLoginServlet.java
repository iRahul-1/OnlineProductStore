package com.onlineproductstore.customer;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/Customer")
public class CustomerLoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("uname");
		String pass = req.getParameter("pword");
		CustomerBean cb = new CustomerLoginDAO().cLogin(name, pass);
		if(cb==null) {
			req.setAttribute("msg", "No User Found!!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			HttpSession hs = req.getSession();
			hs.setAttribute("cbean", cb);
			req.getRequestDispatcher("CustomerLogin.jsp").forward(req, res);
		}
	}
}
