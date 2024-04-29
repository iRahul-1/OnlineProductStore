package com.onlineproductstoreadmin;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/add")
public class AddProductServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, resp);
		}else {
			ProductBean pb = new ProductBean();
			pb.setCode(Integer.parseInt(req.getParameter("code")));
			pb.setName(req.getParameter("name"));
			pb.setPrice(Float.parseFloat(req.getParameter("price")));
			pb.setQty(Integer.parseInt(req.getParameter("qty")));
			int k = new AddProductDAO().insert(pb);
			if(k>0) {
				req.setAttribute("msg", "Your Product Added Successfully!!!<br>");
				req.getRequestDispatcher("AddProduct.jsp").forward(req, resp);
			}
			
		}
	}
}
