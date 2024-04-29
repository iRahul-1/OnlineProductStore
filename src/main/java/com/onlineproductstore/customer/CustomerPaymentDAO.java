package com.onlineproductstore.customer;
import java.sql.*;
import com.onlineproductstoreadmin.*;
public class CustomerPaymentDAO {
	public int k = 0;
	public int Payment(int code,int qty){
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement retrive = con.prepareStatement("update Products60 set qty=qty-? where code = ?");
			retrive.setInt(1, qty);
			retrive.setInt(2, code);
			k = retrive.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return k;
		
	}
}
