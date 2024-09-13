package com.ground.work.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.mindrot.jbcrypt.BCrypt;

import com.ground.work.model.*;

public class UserDAO {
    private Connection conn;

    public UserDAO(Connection conn) {
        this.conn = conn;
    }

    public UserDAO() {}

    // User Registration Method
    public boolean userRegister(User us) {
        boolean success = false;
        PreparedStatement ps = null;
        try {
            String query = "INSERT INTO users(username, email, password, role) VALUES(?,?,?,?)";
            ps = conn.prepareStatement(query);
            ps.setString(1, us.getUsername());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPassword());  // Ensure password is hashed before calling this method
            ps.setString(4, us.getRole());
            

            int rowsAffected = ps.executeUpdate();
            success = rowsAffected > 0;  // Check if the insertion was successful
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return success;
    }

    // User Login Method
    public User getLogin(String email, String password) {
        User us = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String query = "SELECT * FROM users WHERE email = ?";
            pst = conn.prepareStatement(query);
            pst.setString(1, email);
            rs = pst.executeQuery();

            if (rs.next()) {
                String storedPassword = rs.getString("password");
                if (BCrypt.checkpw(password, storedPassword)) {
                    us = new User(
                        rs.getInt("id"), 
                        rs.getString("username"), 
                        rs.getString("email"), 
                        rs.getString("password"), 
                        rs.getString("role")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return us;
    }

    // Event Registration Method
    public boolean eventRegister(Event et) {
        boolean success = false;
        PreparedStatement ps = null;

        try {
            String query = "INSERT INTO events(venue, name, event_date, description) VALUES(?, ?, ?, ?)";
            ps = conn.prepareStatement(query);
            ps.setString(1, et.getVenue());
            ps.setString(2, et.getName());
            ps.setString(3, et.getDate());
            ps.setString(4, et.getDescription());

            int rowsAffected = ps.executeUpdate();
            success = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return success;
    }

    // Update User Role Method
    public boolean updateUserRole(String email, String role) {
        boolean success = false;
        PreparedStatement ps = null;

        try {
            String query = "UPDATE users SET role = ? WHERE email = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, role);
            ps.setString(2, email);

            int rowsAffected = ps.executeUpdate();
            success = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return success;
    }
}