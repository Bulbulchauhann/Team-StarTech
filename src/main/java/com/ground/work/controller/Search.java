package com.ground.work.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
     
        String query = request.getParameter("query").toLowerCase();
       
        if (query.contains("investor")) {     
            response.sendRedirect("investor/Investors.jsp");
        } else if (query.contains("startup")) {         
            response.sendRedirect("startup/Startups.jsp");
        } else if (query.contains("partner")) {           
            response.sendRedirect("pages/Partners.jsp");
        } else {
            response.sendRedirect("notFound.jsp");
        }
    }
}

