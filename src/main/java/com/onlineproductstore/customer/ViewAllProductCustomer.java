package com.onlineproductstore.customer;
import java.io.IOException;
import java.util.ArrayList;
import com.onlineproductstoreadmin.ProductBean;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/cView")
public class ViewAllProductCustomer extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			ArrayList<ProductBean> al = (ArrayList<ProductBean>)new ViewAllProductCustomerDAO().retrive();
			hs.setAttribute("clist", al);
			req.getRequestDispatcher("CViewAllProduct.jsp").forward(req, res);
		}
		
	}
}
