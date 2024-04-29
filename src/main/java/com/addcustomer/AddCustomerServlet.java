package com.addcustomer;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import com.onlineproductstoreadmin.*;
@SuppressWarnings("serial")
@WebServlet("/AddCustomer")
public class AddCustomerServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		AdminBean ab = new AdminBean();
		ab.setuName(req.getParameter("username"));
		ab.setpWord(req.getParameter("password"));
		ab.setfName(req.getParameter("firstname"));
		ab.setlName(req.getParameter("lastname"));
		ab.setAddr(req.getParameter("address"));
		ab.setmId(req.getParameter("email"));
		ab.setPhNo(Long.parseLong(req.getParameter("phone")));
		int k = new AddAdminDAO().Add(ab);
		if(k>0) {
			req.setAttribute("msg", "User Registered Successfully...<br>");
			req.getRequestDispatcher("CustomerAdded.jsp").forward(req, res);
		}else {
			req.setAttribute("msg", "Registration Failed!!<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
	}
}
