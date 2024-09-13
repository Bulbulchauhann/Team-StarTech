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

@WebServlet("/InvestorDashboard")
public class InvestorDashboard extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String domain = request.getParameter("domain");
        String company = request.getParameter("company");
        String minRevenue = request.getParameter("minRevenue");
        String expertise = request.getParameter("expertise");

        List<String> filters = new ArrayList<>();
        if (domain != null && !domain.isEmpty()) filters.add("domain = '" + domain + "'");
        if (company != null && !company.isEmpty()) filters.add("company_name = '" + company + "'");
        if (minRevenue != null && !minRevenue.isEmpty()) filters.add("revenue >= '" + minRevenue + "'");
        if (expertise != null && !expertise.isEmpty()) filters.add("expertise = '" + expertise + "'");

        String filterQuery = "";
        if (!filters.isEmpty()) {
            filterQuery = " WHERE " + String.join(" AND ", filters);
        }

        try {
            Connection con = DBConnect.getConnection();
            String query = "SELECT * FROM investors" + filterQuery;
            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();

            request.setAttribute("investors", rs);
            request.getRequestDispatcher("investorDashboard.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
