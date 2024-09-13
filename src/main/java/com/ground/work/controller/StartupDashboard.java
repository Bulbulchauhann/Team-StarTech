package com.ground.work.controller;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/StartupDashboardServlet")
public class StartupDashboard extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String domain = request.getParameter("domain");
        String sector = request.getParameter("sector");
        String revenue = request.getParameter("revenue");
        String fundingStage = request.getParameter("fundingStage");

        List<String> filters = new ArrayList<>();
        if (domain != null && !domain.isEmpty()) filters.add("domain = '" + domain + "'");
        if (sector != null && !sector.isEmpty()) filters.add("sector = '" + sector + "'");
        if (revenue != null && !revenue.isEmpty()) filters.add("revenue >= '" + revenue + "'");
        if (fundingStage != null && !fundingStage.isEmpty()) filters.add("funding_stage = '" + fundingStage + "'");

        String filterQuery = "";
        if (!filters.isEmpty()) {
            filterQuery = " WHERE " + String.join(" AND ", filters);
        }

        try {
            Connection con = DBConnect.getConnection();
            String query = "SELECT * FROM startups" + filterQuery;
            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();

            request.setAttribute("startups", rs);
            request.getRequestDispatcher("startupDashboard.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

