<%@include file="../header_footer/header.jsp" %>
<div class="container-fluid" style="margin-top:50px;">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3 sidebar">
            <div class="text-center mb-4">
                <img src="../img/mentor1.jpg" alt="User Photo" class="profile-pic rounded-circle shadow-sm" style="width: 150px; height: 150px;">
                <h5 class="mt-3"><%= user.getUsername() %></h5>
            </div>

            <div class="form-group">
                <label for="inputrole" class="form-label">Select Your Role</label> <br>

                <!-- Form to update role -->
                <form action="../updateRole" method="post" id="roleForm">
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-outline-primary <%= "INVESTOR".equals(user.getRole()) ? "active" : "" %> <%= user.getRole() != null ? "disabled" : "" %>">
                            <input type="radio" id="INVESTOR" name="role" value="INVESTOR" autocomplete="off" 
                                   <%= "INVESTOR".equals(user.getRole()) ? "checked disabled" : "" %>> 
                            INVESTOR
                        </label>
                        <label class="btn btn-outline-success <%= "STARTUP".equals(user.getRole()) ? "active" : "" %> <%= user.getRole() != null ? "disabled" : "" %>">
                            <input type="radio" id="STARTUP" name="role" value="STARTUP" autocomplete="off"
                                   <%= "STARTUP".equals(user.getRole()) ? "checked disabled" : "" %>> 
                            STARTUP
                        </label>
                    </div>

                    <!-- Show the submit button only if the role is not yet set -->
                    <%
                        if (user.getRole() == null || user.getRole().isEmpty()) {
                    %>
                    <button type="submit" class="btn btn-primary mt-3">Submit Role</button>
                    <%
                        } else {
                    %>
                    <p class="text-muted mt-3">Your role is set as <strong><%= user.getRole() %></strong>.</p>
                    <%
                        }
                    %>
                </form>
            </div>

            <nav class="nav flex-column">
                <a class="nav-link" href="#">Dashboard</a>
                <a class="nav-link" href="#">Profile Settings</a>
                <a class="nav-link" href="#">Messages</a>
                <form action="${pageContext.request.contextPath}/logout" method="post" style="display: inline;">
                    <button type="submit" class="dropdown-item"
                            style="background: none; border: none; padding: 0; margin: 0; color: inherit; text-align: center;">
                        Logout
                    </button>
                </form>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="col-md-9">
            <h1 class="mb-4">User Profile</h1>
            <!-- User Details Card -->
            <div class="card mb-4 shadow-sm">
                <div class="card-header bg-dark text-white">
                    User Details
                </div>
                <div class="card-body">
                    <h5 class="card-title">Welcome, <%= user.getUsername() %></h5>
                    <p class="card-text"><strong>Email:</strong> <%= user.getEmail() %></p>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="../header_footer/footer.jsp" %>
