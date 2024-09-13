package com.ground.work.controller;

import java.io.IOException;
import com.DB.DBConnect;
import com.ground.work.model.Investor;
import com.ground.work.repository.investorDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/investor")
public class InvestorS extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
         String domain=request.getParameter("domain");
         String company_name=request.getParameter("company_name");
         String revenue=request.getParameter("revenue");
         String role =request.getParameter("role");
         String expertise=request.getParameter("expertise");
         String industry =request.getParameter("industry");
         String mentorship=request.getParameter("mentorship");
         String availability=request.getParameter("availability");
         String support=request.getParameter("support");
         
         
        // Create Investor object and set the values
        Investor inve = new Investor();
        inve.setName(name);
        inve.setEmail(email);
        inve.setDomain(domain);
        inve.setCompany_name(company_name);
        inve.setRevenue(revenue);
        inve.setRole(role);
        inve.setExpertise(expertise);
        inve.setIndustry(industry);
        inve.setMentorship(mentorship);
        inve.setAvailability(availability);
        inve.setSupport(support);

        // Assuming user_id is stored in session (if the user is logged in)
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("user_id"); // Modify if user_id is passed differently
        if (userId >0) {
            session.setAttribute("error-msg", "User ID not found. Please log in.");
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }

        inve.setUser_id(userId);

        // DAO call
        investorDAO dao = new investorDAO(DBConnect.getConnection());
        boolean f = dao.InvestorRegister(inve);

        // Handle success or error messages
        if (f) {
            session.setAttribute("reg-msg", "Registration Successful!");
            response.sendRedirect(request.getContextPath() + "/register/investerReg.jsp");
        } else {
            session.setAttribute("error-msg", "Something went wrong");
            response.sendRedirect(request.getContextPath() + "/register/investerReg.jsp");
        }
    }
}


