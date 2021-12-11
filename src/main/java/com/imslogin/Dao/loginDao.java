package com.imslogin.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginDao {
	String sql = "select * from stocks where fname=? and pass=?";
	String url = "jdbc:mysql://localhost:3306/employees";
	String username = "root";
	String password="ajay1122";
	
	
	public boolean check(String uname,String pass) throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url,username,password);
		
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1,uname);
		st.setString(2,pass);
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			return true;
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		
		
	}

}
