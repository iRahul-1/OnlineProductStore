package com.onlineproductstore.customer;
import java.sql.*;

import com.onlineproductstore.admin.*;
public class AddToCartDAO {
	public int k = 0;
	public int Add(ProductBean pb,int qty) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement add = con.prepareStatement("insert into addtocart values(?,?,?,?)");
			add.setInt(1, pb.getCode());
			add.setString(2, pb.getName());
			add.setDouble(3, pb.getPrice());
			add.setInt(4, qty);
			k = add.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
		
	}
}
