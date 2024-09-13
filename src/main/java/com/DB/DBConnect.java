package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnect {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GroundWorks", "root", "Vivek@123");

//	            String Cdatab="create database GroundWorks";
//		  		  String ctable="CREATE TABLE users (id INT AUTO_INCREMENT PRIMARY KEY,username VARCHAR(50) NOT NULL,email VARCHAR(255) NOT NULL,password VARCHAR(50) NOT NULL,gender VARCHAR (25) NOT NULL,about VARCHAR(500) NOT NULL);";
//			String ctable="CREATE TABLE contactUs (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(50) NOT NULL,email VARCHAR(100) NOT NULL,message VARCHAR(150) NOT NULL);";
//		  		String ctable="ALTER TABLE users ADD COLUMN imageUrl VARCHAR(255)";
//			String ctable="ALTER TABLE users ADD COLUMN reset_token_expiry DATETIME";  
//			Statement statement=conn.createStatement();
//               String ctable ="CREATE TABLE Gusers (\r\n"
//               		+ "    id INT AUTO_INCREMENT PRIMARY KEY,\r\n"
//               		+ "    name VARCHAR(100) NOT NULL,\r\n"
//               		+ "    email VARCHAR(100) NOT NULL,\r\n"
//               		+ "    image_url VARCHAR(255),\r\n"
//               		+ "    sign_in_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP\r\n"
//               		+ ");";
//			String ctable ="CREATE TABLE events (id INT AUTO_INCREMENT PRIMARY KEY,venue VARCHAR(255) NOT NULL,name VARCHAR(255) NOT NULL,event_date DATE NOT NULL,description TEXT NOT NULL);";
//			String tableString="CREATE TABLE mentors (\r\n"
//					+ "    id INT PRIMARY KEY AUTO_INCREMENT,\r\n"
//					+ "    name VARCHAR(100),\r\n"
//					+ "    industry VARCHAR(100),\r\n"
//					+ "    expertise VARCHAR(100),\r\n"
//					+ "    photo VARCHAR(255),\r\n"
//					+ "    bio TEXT,\r\n"
//					+ "    contact VARCHAR(100)\r\n"
//					+ ");";
//		  		  statement.executeUpdate(Cdatab);
//		  		statement.executeUpdate(ctable);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

}
