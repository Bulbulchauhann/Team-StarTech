package com.ground.work.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import com.DB.DBConnect;
import com.ground.work.model.Startup;
import com.ground.work.repository.StartupDAO;

@WebServlet("/startup")
public class StartupS extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String domain = request.getParameter("domain");
        String sector = request.getParameter("sector");
        String pitchdeck = request.getParameter("pitchdeck");
        String revenue = request.getParameter("revenue");
        String funding = request.getParameter("funding");
        String productStage = request.getParameter("productStage");
        String runway = request.getParameter("runway");
        String notableInvestors = request.getParameter("notableInvestors");

        // Create Startup object and set its fields
        Startup stup = new Startup();
        stup.setName(name);
        stup.setEmail(email);
        stup.setDomain(domain);
        stup.setSector(sector);
        stup.setPitchdeck(pitchdeck);
        stup.setRevenue(revenue);
        stup.setFunding(funding);
        stup.setProductStage(productStage);
        stup.setRunway(runway);
        stup.setNotableInvestors(notableInvestors);

        // Get session and check for user ID
        HttpSession session = request.getSession();
        Object userIdObj = session.getAttribute("user_id");

        if (userIdObj == null) {
            // No user ID found in session, redirect to login page
            session.setAttribute("error-msg", "User ID not found. Please log in.");
            response.sendRedirect(request.getContextPath() + "/login/login.jsp");
            return;
        }

        // Cast user ID object to Integer
        int userId = (Integer) userIdObj;

        // Set user ID in Startup object
        stup.setUserId(userId);

        // Create DAO instance and try to register startup
        StartupDAO dao = new StartupDAO(DBConnect.getConnection());
        boolean isRegistered = dao.registerStartup(stup);

        // Check registration result and set appropriate message
        if (isRegistered) {
            session.setAttribute("reg-msg", "Registration Successful!");
            response.sendRedirect(request.getContextPath() + "/register/startupReg.jsp");
        } else {
            session.setAttribute("error-msg", "Something went wrong. Please try again.");
            response.sendRedirect(request.getContextPath() + "/register/startupReg.jsp");
        }
    }
}

