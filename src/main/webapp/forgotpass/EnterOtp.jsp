<%@ include file="../header_footer/header.jsp" %>
<main
	class="d-flex align-items-center primary-background banner-background"
	style="height: 100vh">

	<div class="container mt-4 pt-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header primary-background text-white text-center">
						<i class="fa fa-lock fa-4x"></i><br>
						<p>Enter OTP</p>
					</div>

					<%
					if (request.getAttribute("message") != null) {
						out.print("<p class='text-danger ml-1'>" + request.getAttribute("message") + "</p>");
					}
					%>
					<div class="panel-body">
						<form id="register-form" action="ValidateOtp" role="form"
							autocomplete="off" class="form" method="post">

							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope color-blue"></i></span> <input
										id="opt" name="otp" placeholder="Enter OTP"
										class="form-control" type="text" required="required">
								</div>
							</div>
							<div class="form-group">
								<input name="recover-submit"
									class="btn btn-lg btn-primary btn-block" value="Reset Password"
									type="submit">
							</div>

							<input type="hidden" class="hide" name="token" id="token"
								value="">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</main>
<%@include file="../header_footer/footer.jsp"%>