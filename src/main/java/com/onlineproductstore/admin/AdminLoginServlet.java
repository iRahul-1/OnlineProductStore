package com.onlineproductstore.admin;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String uName = req.getParameter("uname");
		String pass = req.getParameter("pword");
		AdminBean ab = new AloginDAO().Login(uName, pass);
		if(ab==null) {
			req.setAttribute("msg", "Login Failed!!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			HttpSession hs = req.getSession();
			hs.setAttribute("abean", ab);
			req.getRequestDispatcher("Admin.jsp").forward(req, res);
		}
	}
}
