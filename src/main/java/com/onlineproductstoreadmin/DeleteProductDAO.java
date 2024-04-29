package com.onlineproductstoreadmin;
import java.sql.*;
public class DeleteProductDAO {
	public int k = 0;
	public int delete(int code) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement delete = con.prepareStatement("delete from products60 where code=?");
			delete.setInt(1, code);
			k = delete.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
		
	}
}
