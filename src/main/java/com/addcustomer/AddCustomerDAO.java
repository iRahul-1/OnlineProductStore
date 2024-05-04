package com.addcustomer;
import java.sql.*;

import com.onlineproductstore.admin.*;
public class AddCustomerDAO {
	public int k = 0;
	public int Add(AdminBean ab) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement Admin = con.prepareStatement("insert into customers60 values(?,?,?,?,?,?,?)");
			Admin.setString(1, ab.getuName());
			Admin.setString(2, ab.getpWord());
			Admin.setString(3, ab.getfName());
			Admin.setString(4, ab.getlName());
			Admin.setString(5, ab.getAddr());
			Admin.setString(6, ab.getmId());
			Admin.setLong(7, ab.getPhNo());
			k = Admin.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
		
	}
}
