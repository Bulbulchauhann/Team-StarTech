package com.ground.work.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ground.work.model.Contactus;


public class ContactDAO {
	
	private Connection conn;

	public ContactDAO(Connection conn) {
		this.conn = conn;
	}

	public boolean ContactRegister(Contactus contactus) {
		boolean f = false;
		try {
			PreparedStatement ps = conn.prepareStatement("INSERT INTO contactus (name,email,message) VALUES (?, ?, ?)");
			ps.setString(1, contactus.getName());
			ps.setString(2, contactus.getEmail());
			ps.setString(3, contactus.getMessage());
			ps.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
