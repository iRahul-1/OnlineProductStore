package com.onlineproductstoreadmin;
import java.sql.*;
public class UpdateProductDAO {
	public int k = 0;
	public int update(ProductBean pb ) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement update = con.prepareStatement("update products60 set price = ?,qty = ? where code = ?");
			update.setFloat(1, pb.getPrice());
			update.setInt(2, pb.getQty());
			update.setInt(3, pb.getCode());
			k=update.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return k;
		
	}
}
