package com.onlineproductstoreadmin;
import java.sql.*;
import java.util.*;
public class ViewAllProductDAO {
	public ArrayList<ProductBean> al = new ArrayList<>();
	public ArrayList<ProductBean> retrive(){
		try {
			Connection Con = DBConnection.getCon();
			PreparedStatement view = Con.prepareStatement("Select * from products60");
			ResultSet rs = view.executeQuery();
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
