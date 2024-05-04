package com.onlineproductstore.customer;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;

import com.onlineproductstore.admin.ProductBean;
@SuppressWarnings("serial")
@WebServlet("/payment")
public class CustomerPaymentServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired!!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			ArrayList<ProductBean> list1 = new ViewCartDAO().view();
			Iterator<ProductBean> it = list1.iterator();
			while(it.hasNext()) {
				ProductBean pb = it.next();
				int code = pb.getCode();
				int qty = pb.getQty();
				int k = new CustomerPaymentDAO().Payment(code,qty);
				if(k>0) {
					req.setAttribute("plist", list1);
					req.getRequestDispatcher("CustomerPayment.jsp").forward(req, res);
				}
			}
		}
				
			
		}
	}

