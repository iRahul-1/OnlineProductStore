package com.onlineproductstore.customer;
import java.sql.*;
import java.util.ArrayList;

import com.onlineproductstore.admin.DBConnection;
import com.onlineproductstore.admin.ProductBean;
public class AddQuantityDAO {
	ArrayList<ProductBean> al = new ArrayList<ProductBean>();
	public ArrayList<ProductBean> getData(int code) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement data = con.prepareStatement("select * from products60 where code=?");
			data.setInt(1, code);
			ResultSet rs = data.executeQuery();
			if(rs.next()) {
				ProductBean pb = new ProductBean();
				pb.setCode(rs.getInt(1));
				pb.setName(rs.getString(2));
				pb.setPrice(rs.getFloat(3));
				pb.setQty(rs.getInt(4));
				al.add(pb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
		
	}
}
