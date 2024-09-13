<%@ include file="../header_footer/header.jsp" %>
<main
	class="d-flex align-items-center primary-background banner-background"
	style="height: 100vh">
	<div class="container mt-4 pt-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header primary-background text-white text-center">
						<span class="fa fa-user-plus fa-3x"></span><br>
						<p>Forgot your password?</p>
					</div>

					<form class="card mt-4" action="forgotPassword" method="POST">
						<div class="card-body">
							<div class="form-group">
								<label for="email-for-pass">Enter your email address</label> <input
									class="form-control" type="text" name="email"
									id="email-for-pass" required> <small
									class="form-text text-muted">Enter the registered email
									address . Then we'll email a OTP to this address.</small>
							</div>
						</div>
						<div class="card-footer">
							<button class="btn btn-success" type="submit">Get New
								Password</button>
							<button class="btn btn-danger" type="submit">Back to
								Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</main>
<%@include file="../header_footer/footer.jsp"%>