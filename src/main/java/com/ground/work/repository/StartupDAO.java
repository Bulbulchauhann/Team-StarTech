package com.ground.work.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.ground.work.model.Startup;
import java.sql.SQLException;

public class StartupDAO {
    
    private Connection conn;

    public StartupDAO(Connection conn) {
        this.conn = conn;
    }
    
    public boolean registerStartup(Startup startup) {
        boolean isSuccess = false;
        String query = "INSERT INTO startups (user_id, name, email, domain, sector, pitchdeck, revenue, funding, productStage, runway, notableInvestors) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?,?,?)";
        
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
        	stmt.setInt(1, startup.getUserId());
            stmt.setString(2, startup.getName());  
            stmt.setString(3, startup.getEmail());
            stmt.setString(4, startup.getDomain());
            stmt.setString(5, startup.getSector());
            stmt.setString(6, startup.getPitchdeck());
            stmt.setString(7, startup.getRevenue());
            stmt.setString(8, startup.getFunding());
            stmt.setString(9, startup.getProductStage());
            stmt.setString(10, startup.getRunway());
            stmt.setString(10, startup.getNotableInvestors());
            

            int rowsAffected = stmt.executeUpdate();
            isSuccess = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();  
        }
        return isSuccess;
    }
}



