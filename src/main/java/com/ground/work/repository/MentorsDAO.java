package com.ground.work.repository;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ground.work.model.Mentor;

public class MentorsDAO {
	private Connection conn;

	public MentorsDAO(Connection conn) {
		this.conn = conn;
	}

	public boolean MentorsRegister(Mentor mentor) {
		boolean f = false;
		try {
			 String sql = "INSERT INTO mentors (name, industry, expertise, bio, contact) VALUES (?, ?, ?, ?, ?)";
			 PreparedStatement stmt = conn.prepareStatement(sql);
	            stmt.setString(1, mentor.getName());
	            stmt.setString(2, mentor.getIndustry());
	            stmt.setString(3, mentor.getExpertise());
	            stmt.setString(5, mentor.getBio());
	            stmt.setString(6, mentor.getContact());

	            stmt.executeUpdate();
			
	            f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public List<Map<String, String>> MentorsView(Mentor mentor) {
	    List<Map<String, String>> mentorList = new ArrayList<>();
	    
	    Connection conn = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	    try {
	        // Assuming conn is already initialized elsewhere
	        String query = "SELECT * FROM mentors";
	        ps = conn.prepareStatement(query);
	        rs = ps.executeQuery();
	        
	        while (rs.next()) {
	            Map<String, String> mentorData = new HashMap<>();
	            mentorData.put("id", rs.getString("id"));
	            mentorData.put("name", rs.getString("name"));
	            mentorData.put("industry", rs.getString("industry"));
	            mentorData.put("expertise", rs.getString("expertise"));
	            mentorData.put("bio", rs.getString("bio"));
	            mentorData.put("contact", rs.getString("contact"));
	            mentorList.add(mentorData);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    return mentorList; // Return the list of mentors
	}

}

