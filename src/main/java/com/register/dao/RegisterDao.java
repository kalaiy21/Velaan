package com.register.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.register.controller.RegisterController;

public class RegisterDao {

	
	
	public int registerEmployee(RegisterController user) throws SQLException, ClassNotFoundException {
		String sql = "INSERT INTO stocks" + " (Name,Number,Email,Password,Location,Type) VALUES" + "(?,?,?,?,?,?);";
		
		int count=0;
		Class.forName("com.mysql.jdbc.Driver");
			
		
		try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/velaan", "root", "root");
		
		PreparedStatement st = con.prepareStatement(sql)){
		
		st.setString(1,user.getName());
		st.setString(2,user.getNumber());
		st.setString(3,user.getMail());
		st.setString(4,user.getPassword());
		st.setString(5,user.getLocation());
		st.setString(6,user.getType());
		
		System.out.println(st);
		
		
		count = st.executeUpdate();
		
		
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
		
		
	}
}
