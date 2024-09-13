<%@ page import="java.sql.*" %>
<%@include file="../header_footer/header.jsp" %>
<%@page import="com.DB.DBConnect"%>

<div class="container mt-5">
<h2>Welcome, Investor</h2>
    <form action="InvestorDashboard" method="GET" class="mb-4">
        <div class="row">
            <div class="col-md-3">
                <label for="domain" class="form-label">Domain</label>
                <input type="text" class="form-control" id="domain" name="domain" placeholder="Enter domain">
            </div>
            <div class="col-md-3">
                <label for="company" class="form-label">Company</label>
                <input type="text" class="form-control" id="company" name="company" placeholder="Enter company">
            </div>
            <div class="col-md-3">
                <label for="minRevenue" class="form-label">Minimum Revenue</label>
                <input type="text" class="form-control" id="minRevenue" name="minRevenue" placeholder="Enter min revenue">
            </div>
            <div class="col-md-3">
                <label for="expertise" class="form-label">Expertise</label>
                <input type="text" class="form-control" id="expertise" name="expertise" placeholder="Enter expertise">
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-3">
                <button type="submit" class="btn btn-primary">Apply Filters</button>
            </div>
        </div>
    </form>

    
    <h4>Matching Startups:</h4>

    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead class="table-dark">
                <tr>
                    <th>Startup Name</th>
                    <th>Email</th>
                    <th>Domain</th>
                    <th>Sector</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {
                        Connection con = DBConnect.getConnection();
                        String investorDomain = "Tech";  // Replace with dynamic domain value from investor
                        String query = "SELECT s.name, s.email, s.domain, s.sector FROM startups s WHERE s.domain = ?";
                        PreparedStatement pst = con.prepareStatement(query);
                        pst.setString(1, investorDomain);
                        ResultSet rs = pst.executeQuery();

                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("domain") %></td>
                    <td><%= rs.getString("sector") %></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
    </div>
</div>

<%@include file="../header_footer/footer.jsp"%>
