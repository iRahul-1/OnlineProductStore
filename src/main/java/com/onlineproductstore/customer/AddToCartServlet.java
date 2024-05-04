package com.onlineproductstore.customer;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;

import com.onlineproductstore.admin.*;
@SuppressWarnings("serial")
@WebServlet("/Ats")
public class AddToCartServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		int code = Integer.parseInt(req.getParameter("pcode"));
		int qty = Integer.parseInt(req.getParameter("qty"));
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!!<br>");
			req.getRequestDispatcher("AddToCart.jsp").forward(req, res);
		}else {
			ArrayList<ProductBean> al = new ViewAllProductCustomerDAO().retrive();
			Iterator<ProductBean> it = al.iterator();
			while(it.hasNext()) {
				ProductBean pb = it.next();
				if(code==pb.getCode()) {
					int k = new AddToCartDAO().Add(pb,qty);
					if(k>0) {
						req.setAttribute("msg", "Product Added Successfully!!!<br>");
						req.getRequestDispatcher("AddToCart.jsp").forward(req, res);
					}else {
						req.setAttribute("msg", "Product not added!!!<br>");
						req.getRequestDispatcher("Msg.jsp").forward(req, res);
					}
				}
			}
		}
	}
}
