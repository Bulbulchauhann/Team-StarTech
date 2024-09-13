<%@ include file="../header_footer/header.jsp"%>
<main class="primary-background banner-background py-5">
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-8 col-lg-6">
				<div class="card">
					<div class="card-header text-center bg-primary text-white">
						<span class="fa fa-3x fa-user-circle"></span> <br> Update
						Investor Details
					</div>

					<div class="card-body">
						<form id="reg-form"
							action="<%=request.getContextPath()%>/investor" method="POST">
							<!-- Investor Name Field -->
							<div class="mb-3">
								<label for="name" class="form-label">Name</label> <input
									type="text" id="name" name="name" class="form-control"
									placeholder="Name"
									value="<%=user != null ? user.getUsername() : ""%>" required />
							</div>

							<!-- Email Field -->
							<div class="mb-3">
								<label for="email" class="form-label">Email</label> <input
									type="email" id="email" name="email" class="form-control"
									placeholder="Email"
									value="<%=user != null ? user.getEmail() : ""%>" required />
							</div>

							<!-- Domain Field -->
							<div class="mb-3">
								<label for="domain" class="form-label">Domain</label> <input
									type="text" id="domain" name="domain" class="form-control"
									placeholder="Domain">
							</div>

							<!-- Company Name Field -->
							<div class="mb-3">
								<label for="company_name" class="form-label">Company
									Name</label> <input type="text" id="company_name" name="company_name"
									class="form-control" placeholder="Company Name">
							</div>

							<!-- Revenue Field -->
							<div class="mb-3">
								<label for="revenue" class="form-label">Revenue</label> <input
									type="text" id="revenue" name="revenue" class="form-control"
									placeholder="Revenue">
							</div>

							<!-- Role Field -->
							<div class="mb-3">
								<label for="role" class="form-label">Role</label> <input
									type="text" id="role" name="role" class="form-control"
									placeholder="Role">
							</div>

							<!-- Expertise Field -->
							<div class="mb-3">
								<label for="expertise" class="form-label">Expertise</label> <input
									type="text" id="expertise" name="expertise"
									class="form-control" placeholder="Expertise">
							</div>

							<!-- Industry Field -->
							<div class="mb-3">
								<label for="industry" class="form-label">Industry</label> <select
									id="industry" name="industry" class="form-control" required>
									<option value="">Select Industry</option>
									<option value="Technology">Technology</option>
									<option value="Healthcare">Healthcare</option>
									<option value="Finance">Finance</option>
									<option value="Education">Education</option>
									<option value="Manufacturing">Manufacturing</option>
									<option value="Retail">Retail</option>
									<option value="Energy">Energy</option>
									<option value="Transportation">Transportation</option>
									<option value="Telecommunications">Telecommunications</option>
									<option value="Real Estate">Real Estate</option>
									<option value="Hospitality">Hospitality</option>
									<option value="Entertainment">Entertainment</option>
									<!-- Add more options as needed -->
								</select>
							</div>

							<!-- Mentorship Field -->
							<div class="mb-3">
								<label for="mentorship" class="form-label">Mentorship</label> <input
									type="text" id="mentorship" name="mentorship"
									class="form-control" placeholder="Mentorship">
							</div>

							<!-- Availability Field -->
							<div class="mb-3">
								<label for="availability" class="form-label">Availability</label>
								<input type="text" id="availability" name="availability"
									class="form-control" placeholder="Availability">
							</div>

							<!-- Support Field -->
							<div class="mb-3">
								<label for="support" class="form-label">Support</label> <input
									type="text" id="support" name="support" class="form-control"
									placeholder="Support">
							</div>

							<!-- Submit Button -->
							<button type="submit" class="btn btn-primary">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</main>

<%@include file="../header_footer/footer.jsp"%>
