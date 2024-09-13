<%@ page import="java.sql.*" %>
<%@include file="../header_footer/header.jsp" %>
<%@page import="com.DB.DBConnect"%>

<div class="container mt-5">
    <h2>Welcome, Startup</h2>

    <form action="StartupDashboard" method="GET" class="mb-4">
        <div class="row">
            <div class="col-md-3">
                <label for="domain" class="form-label">Domain</label>
                <input type="text" class="form-control" id="domain" name="domain" placeholder="Enter domain">
            </div>
            <div class="col-md-3">
                <label for="sector" class="form-label">Sector</label>
                <input type="text" class="form-control" id="sector" name="sector" placeholder="Enter sector">
            </div>
            <div class="col-md-3">
                <label for="revenue" class="form-label">Minimum Revenue</label>
                <input type="text" class="form-control" id="revenue" name="revenue" placeholder="Enter min revenue">
            </div>
            <div class="col-md-3">
                <label for="fundingStage" class="form-label">Funding Stage</label>
                <input type="text" class="form-control" id="fundingStage" name="fundingStage" placeholder="Enter funding stage">
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-3">
                <button type="submit" class="btn btn-primary">Apply Filters</button>
            </div>
        </div>
    </form>

    <h4>Matching Investors:</h4>

    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead class="table-dark">
                <tr>
                    <th>Investor Name</th>
                    <th>Company</th>
                    <th>Email</th>
                    <th>Domain</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {
                        Connection con = DBConnect.getConnection();
                        String startupDomain = "Tech";  // Replace with dynamic domain value from startup
                        String query = "SELECT i.name, i.company_name, i.email, i.domain FROM investors i WHERE i.domain = ?";
                        PreparedStatement pst = con.prepareStatement(query);
                        pst.setString(1, startupDomain);
                        ResultSet rs = pst.executeQuery();

                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("company_name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("domain") %></td>
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
