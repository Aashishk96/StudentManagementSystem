package com.ps.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	 public static Connection getConnection() {
		 Connection conn = null;
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ProjectCRUD","root","root123");
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return conn;
	 }
}
