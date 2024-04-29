package com.onlineproductstore.customer;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.ArrayList;

import com.onlineproductstoreadmin.ProductBean;
@SuppressWarnings("serial")
@WebServlet("/Add")
public class AddQuantityServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		int code = Integer.parseInt(req.getParameter("pcode"));
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!!<br>");
			req.getRequestDispatcher("AddToCart.jsp").forward(req, res);
		}else {
			ArrayList<ProductBean> al = new AddQuantityDAO().getData(code);
			req.setAttribute("qlist", al);
			req.getRequestDispatcher("AddQuantity.jsp").forward(req, res);
		}
	}
}
