package com.onlineproductstore.customer;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.onlineproductstore.admin.DBConnection;

public class BuyProductDAO {
	public int k = 0;
	public int Buy() {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement buy = con.prepareStatement("delete from addtocart");
			k = buy.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
		
	}
}
