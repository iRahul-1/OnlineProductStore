package com.onlineproductstore.customer;
import java.io.IOException;
import java.util.ArrayList;

import com.onlineproductstore.admin.ProductBean;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/show")
public class ViewCartServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			ArrayList<ProductBean> al = new ViewCartDAO().view();
			hs.setAttribute("vlist", al);
			req.getRequestDispatcher("ViewCart.jsp").forward(req, res);
		}
	}
}
