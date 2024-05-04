package com.onlineproductstore.customer;
import java.sql.*;
import java.util.ArrayList;

import com.onlineproductstore.admin.*;
public class ViewAllProductCustomerDAO {
	ArrayList<ProductBean> al = new ArrayList<>();
	public ArrayList<ProductBean> retrive(){
		
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement retrive = con.prepareStatement("select * from products60");
			ResultSet rs = retrive.executeQuery();
			while(rs.next()) {
				ProductBean pb = new ProductBean();
				pb.setCode(rs.getInt(1));
				pb.setName(rs.getString(2));
				pb.setPrice(rs.getFloat(3));
			   pb.setQty(rs.getInt(4));
			   al.add(pb);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return al;
		
	}
}
