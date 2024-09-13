package com.ground.work.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ground.work.model.Investor;

public class investorDAO {

    private Connection conn;
    public investorDAO(Connection conn) {
        this.conn = conn;
    }

  
    public boolean InvestorRegister(Investor investor) {
        boolean f = false; 
        try {
            
            String sql = "INSERT INTO investors (user_id,name,email,domain,company_name,\r\n"
            		+ "	revenue,role,expertise,industry,mentorship,availability,\r\n"
            		+ "support VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            
            statement.setInt(1, investor.getUser_id());
            statement.setString(2, investor.getName());
            statement.setString(3, investor.getEmail());
            statement.setString(4, investor.getDomain());  
            statement.setString(5, investor.getCompany_name()); 
            statement.setString(6, investor.getRevenue()); 
            statement.setString(7, investor.getRole());
            statement.setString(8, investor.getExpertise()); 
            statement.setString(9, investor.getIndustry()); 
            statement.setString(10, investor.getMentorship()); 
            statement.setString(11, investor.getAvailability()); 
            statement.setString(12, investor.getSupport()); 
             

            
            statement.executeUpdate();
            f = true; 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f; 
    }
}

