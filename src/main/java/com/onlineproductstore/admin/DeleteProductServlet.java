package com.onlineproductstore.admin;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, resp);
			
		}else {
			int code = Integer.parseInt(req.getParameter("pcode"));
			ArrayList<ProductBean> al = (ArrayList<ProductBean>) hs.getAttribute("alist");
			Iterator<ProductBean> it = al.iterator();
			while(it.hasNext()) {
				ProductBean pb = (ProductBean)it.next();
				if(code==pb.getCode()) {
					int k = new DeleteProductDAO().delete(code);
					if(k>0) {
						req.setAttribute("msg", "Product Removed!!!<br>");
						req.getRequestDispatcher("DeleteProduct.jsp").forward(req, resp);
					}
					break;
				}
			}
		}
	}
}
