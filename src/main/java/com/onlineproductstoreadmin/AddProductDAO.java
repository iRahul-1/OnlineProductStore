package com.onlineproductstoreadmin;
import java.sql.*;
public class AddProductDAO {
public int k = 0;
public int insert(ProductBean pb) {
	
	try {
		
		Connection con = DBConnection.getCon();
		PreparedStatement insert = con.prepareStatement("insert into products60 values(?,?,?,?)");
		insert.setInt(1, pb.getCode());
		insert.setString(2, pb.getName());
		insert.setFloat(3, pb.getPrice());
		insert.setInt(4, pb.getQty());
		k = insert.executeUpdate();
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	return k;
	
}
}
