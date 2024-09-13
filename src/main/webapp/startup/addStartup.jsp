<%@ include file="../header_footer/header.jsp" %>

<main class="primary-background banner-background py-5">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow-sm">
                    <div class="card-header text-center bg-success text-white">
                        <span class="fa fa-3x fa-user-circle"></span> <br> Update StartUp Details
                    </div>

                    <div class="card-body">
                        <form id="reg-form" action="<%=request.getContextPath()%>/startup" method="POST">
                            <div class="mb-3">
                                <label for="name" class="form-label">Startup Name</label>
                                <input type="text" id="name" name="name" class="form-control" placeholder="Startup Name" value="<%=user != null ? user.getUsername() : ""%>" required>
                            </div>

                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" id="email" name="email" class="form-control" placeholder="Email" value="<%=user != null ? user.getEmail() : ""%>" required>
                            </div>

                            <!-- Additional Fields -->
                            <div class="mb-3">
                                <label for="domain" class="form-label">Domain</label>
                                <input type="text" id="domain" name="domain" class="form-control" placeholder="Domain" required>
                            </div>

                            <div class="mb-3">
                                <label for="sector" class="form-label">Sector</label>
                                <input type="text" id="sector" name="sector" class="form-control" placeholder="Sector" required>
                            </div>

                            <div class="mb-3">
                                <label for="pitchdeck" class="form-label">Pitch Deck</label>
                                <input type="url" id="pitchdeck" name="pitchdeck" class="form-control" placeholder="Pitch Deck URL" required>
                            </div>

                            <div class="mb-3">
                                <label for="revenue" class="form-label">Revenue</label>
                                <input type="text" id="revenue" name="revenue" class="form-control" placeholder="Revenue" required>
                            </div>

                            <div class="mb-3">
                                <label for="funding" class="form-label">Funding</label>
                                <input type="text" id="funding" name="funding" class="form-control" placeholder="Funding" required>
                            </div>

                            <div class="mb-3">
                                <label for="productStage" class="form-label">Product Stage</label>
                                <input type="text" id="productStage" name="productStage" class="form-control" placeholder="Product Stage" required>
                            </div>

                            <div class="mb-3">
                                <label for="runway" class="form-label">Runway</label>
                                <input type="text" id="runway" name="runway" class="form-control" placeholder="Runway" required>
                            </div>

                            <div class="mb-3">
                                <label for="notableInvestors" class="form-label">Notable Investors</label>
                                <input type="text" id="notableInvestors" name="notableInvestors" class="form-control" placeholder="Notable Investors" required>
                            </div>

                            <button type="submit" class="btn btn-primary w-100">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<%@ include file="../header_footer/footer.jsp" %>
