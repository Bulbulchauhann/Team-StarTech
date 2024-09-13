package com.ground.work.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/logout")
public class Logout extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Invalidate the session to log the user out
        request.getSession().invalidate();
        
        // Redirect to login page or home page
        response.sendRedirect(request.getContextPath() + "/login/login.jsp");
    }
}

