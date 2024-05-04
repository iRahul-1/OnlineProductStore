package com.onlineproductstore.admin;
import java.sql.*;
public class DBConnection {
	private static Connection con = null;
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rahul","rahul");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getCon() {
		return con;
		
	}
}
