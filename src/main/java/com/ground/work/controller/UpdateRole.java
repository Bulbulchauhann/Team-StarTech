package com.ground.work.controller;

import java.io.IOException;

import com.DB.DBConnect;
import com.ground.work.model.User;
import com.ground.work.repository.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateRole")
public class UpdateRole extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        String selectedRole = request.getParameter("role");

        if (user != null && selectedRole != null) {
            // Update the user's role in the database
            UserDAO userDao = new UserDAO(DBConnect.getConnection());
            boolean isUpdated = userDao.updateUserRole(user.getEmail(), selectedRole);

            if (isUpdated) {
                // Update the user object in the session
                user.setRole(selectedRole);
                session.setAttribute("user", user);

                // Redirect based on the selected role
                if ("INVESTOR".equals(selectedRole)) {
                	response.sendRedirect(request.getContextPath() +"/investor/investor-profile.jsp"); // Redirect to the investor dashboard
                } else if ("STARTUP".equals(selectedRole)) {
                	response.sendRedirect(request.getContextPath() +"/startup/startup-profile.jsp");  // Redirect to the startup dashboard
                }
            } else {
                // Handle error updating role
                response.getWriter().write("Error updating role.");
            }
        } else {
            // Handle invalid user or role
            response.getWriter().write("Invalid role or user.");
        }
    }
}

