package com.ground.work.controller;


import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.DB.DBConnect;
import com.ground.work.model.Mentor;
import com.ground.work.repository.MentorsDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@MultipartConfig(maxFileSize = 16177215)  // 16MB
@WebServlet("/mentor")
public class MentorS extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form parameters
        String name = request.getParameter("name");
        String industry = request.getParameter("industry");
        String expertise = request.getParameter("expertise");
        String bio = request.getParameter("bio");
        String contact = request.getParameter("contact");

        // Create a Mentor object and set its properties
        Mentor mentor = new Mentor();
        mentor.setName(name);
        mentor.setIndustry(industry);
        mentor.setExpertise(expertise);
        mentor.setBio(bio);
        mentor.setContact(contact);

        // Initialize DAO and register the mentor
        MentorsDAO dao = new MentorsDAO(DBConnect.getConnection());
        boolean success = dao.MentorsRegister(mentor);

        // Handle registration result
        HttpSession session = request.getSession();
        if (success) {
            session.setAttribute("reg-msg", "Registration Successful!");

            // Fetch updated mentor list after successful registration
            List<Map<String, String>> mentorList = dao.MentorsView(mentor);
            request.setAttribute("mentorList", mentorList);

            // Forward to mentors.jsp
            RequestDispatcher rd = request.getRequestDispatcher("/mentors/viewMentors.jsp");
            rd.forward(request, response);
        } else {
            session.setAttribute("error-msg", "Something went wrong");
            response.sendRedirect(request.getContextPath() + "/mentors/addMentors.jsp");
        }
    }
}

