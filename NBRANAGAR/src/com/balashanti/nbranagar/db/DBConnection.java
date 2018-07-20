package com.balashanti.nbranagar.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static Connection conn = null;

	public static Connection connect() {
		try {
			com.mysql.jdbc.Driver driver = new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(driver);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nbr_nagar", "root", "");
		} catch (SQLException e) {
			System.out.println("Error while generating connection with DB");
			e.printStackTrace();
		}
		if (conn != null)
			return conn;
		else
			return null;
	}
}
