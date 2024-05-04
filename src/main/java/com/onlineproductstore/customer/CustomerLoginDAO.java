package com.onlineproductstore.customer;
import java.sql.*;

import com.onlineproductstore.admin.*;
public class CustomerLoginDAO {
	CustomerBean cb = null;
    public CustomerBean cLogin(String name,String pass) {
    	try {
			Connection con = DBConnection.getCon();
			PreparedStatement login = con.prepareStatement("select * from customers60 where uname = ? and password = ?");
			login.setString(1, name);
			login.setString(2, pass);
			ResultSet rs = login.executeQuery();
			if(rs.next()) {
				cb = new CustomerBean();
				cb.setuName(rs.getString(1));
				cb.setPass(rs.getString(2));
				cb.setfName(rs.getString(3));
				cb.setlName(rs.getString(4));
				cb.setAddr(rs.getString(5));
				cb.setMid(rs.getString(6));
				cb.setPhno(Long.parseLong(rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cb;
    	
    }
}
