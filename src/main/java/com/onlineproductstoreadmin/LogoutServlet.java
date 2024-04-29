package com.onlineproductstoreadmin;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!!");
			req.getRequestDispatcher("Msg.jsp").forward(req, resp);
		}else {
			hs.removeAttribute("abean");
			hs.invalidate();
			req.setAttribute("msg", "User LoggedOut Successfully!!!");
			req.getRequestDispatcher("Logout.jsp").forward(req, resp);
			
		}
		
	}
}
