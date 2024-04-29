package com.onlineproductstore.customer;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
@SuppressWarnings("serial")
@WebServlet("/Buy")
public class BuyProductServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			int buy = new BuyProductDAO().Buy();
			if(buy>0) {
				req.setAttribute("msg", "Your order has been successfully placed.<br>");
				req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
			}else {
				req.setAttribute("msg", "Request Failed..");
				req.getRequestDispatcher("Msg.jsp").forward(req, res);
			}
		}
	}
}
