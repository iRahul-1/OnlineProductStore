package com.onlineproductstoreadmin;
import java.sql.*;
public class AloginDAO {
public AdminBean ab = null;
public AdminBean Login(String uName,String pWord) {
	try {
		Connection con = DBConnection.getCon();
		PreparedStatement login = con.prepareStatement("Select * from Admin60 where uname = ? and password = ?");
		login.setString(1, uName);
		login.setString(2, pWord);
		ResultSet rs = login.executeQuery();
		if(rs.next()) {
			ab =  new AdminBean();
			ab.setuName(rs.getString(1));
			ab.setpWord(rs.getString(2));
			ab.setfName(rs.getString(3));
			ab.setlName(rs.getString(4));
			ab.setAddr(rs.getString(5));
			ab.setmId(rs.getString(6));
			ab.setPhNo(rs.getLong(7));
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return ab;
	
}
}
