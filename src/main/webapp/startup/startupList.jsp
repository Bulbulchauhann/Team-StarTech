<%@page import="com.DB.DBConnect"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header_footer/header.jsp" %>
<h2 class="text-center my-4">List of Startups</h2>
<div class="container">
    <table class="table table-bordered table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Founder</th>
                <th>Email</th>
                <th>Industry</th>
                <th>Website</th>
                <th>Location</th>
                <th>Description</th>
                <th>Total Funding (USD)</th>
                <th>Status</th>
                <th>Funding History</th>
                <th>Investors</th>
                <th>Milestones</th>
            </tr>
        </thead>
        <tbody>
            <%
                try (Connection conn = DBConnect.getConnection()) {
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM startup");

                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getLong("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("founder") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("industry") %></td>
                <td><a href="<%= rs.getString("website") %>" target="_blank"><%= rs.getString("website") %></a></td>
                <td><%= rs.getString("location") %></td>
                <td><%= rs.getString("description") %></td>
                <td><%= rs.getDouble("totalFunding") %></td>
                <td><%= rs.getString("status") %></td>
                <td><%= rs.getString("fundingHistory") %></td>
                <td><%= rs.getString("investors") %></td>
                <td><%= rs.getString("milestones") %></td>
            </tr>
            <%
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            %>
        </tbody>
    </table>
</div>

<%@include file="../header_footer/footer.jsp"%>