<%@ include file="../header_footer/header.jsp" %>
<main
	class="d-flex align-items-center primary-background banner-background"
	style="height: 100vh">

	<div class="container mt-4 pt-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header primary-background text-white text-center">
						<strong>Reset Password</strong>

					</div>
					<div class="pt-3 pb-3">
						<form class="form-horizontal" action="newPassword" method="POST">
							<!-- User Name Input -->
							<div class="form-group row justify-content-center px-3">
								<div class="col-9 px-0">
									<input type="text" name="password"
										placeholder="&#xf084; &nbsp; New Password"
										class="form-control border-info placeicon">
								</div>
							</div>
							<!-- Password Input -->
							<div class="form-group row justify-content-center px-3">
								<div class="col-9 px-0">
									<input type="password" name="confPassword"
										placeholder="&#xf084; &nbsp; Confirm New Password"
										class="form-control border-info placeicon">
								</div>
							</div>

							<!-- Log in Button -->
							<div class="form-group row justify-content-center">
								<div class="col-3 px-3 mt-3">
									<input type="submit" value="Reset"
										class="btn btn-block btn-info">
								</div>
							</div>
						</form>
					</div>
					<!-- Alternative Login -->
					<div class="mx-0 px-0 bg-light">

						<!-- Horizontal Line -->
						<div class="px-4 pt-5">
							<hr>
						</div>
						<!-- Register Now -->
						<div class="pt-2">
							<div class="row justify-content-center">
								<h5>
									Don't have an Account?<span><a href="#"
										class="text-danger"> Register Now!</a></span>
								</h5>
							</div>
							<div
								class="row justify-content-center align-items-center pt-4 pb-5">
								<div class="col-4"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</main>
<%@include file="../header_footer/footer.jsp"%>