package com.onlineproductstoreadmin;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditProductServlet extends HttpServlet{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, resp);
			
		}else {
			String pCode = req.getParameter("pcode");
			ArrayList<ProductBean> al = (ArrayList<ProductBean>) hs.getAttribute("alist");
			Iterator<ProductBean> it = al.iterator();
			while(it.hasNext()) {
				ProductBean pb = (ProductBean)it.next();
				if(pCode.equals(""+pb.getCode())) {
					req.setAttribute("pbean", pb);
					req.getRequestDispatcher("EditProduct.jsp").forward(req, resp);
					break;
				}
			}
		}
	}
}
