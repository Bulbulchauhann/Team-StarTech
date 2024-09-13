<%@ include file="../header_footer/header.jsp" %>
<main
	class="d-flex align-items-center primary-background banner-background"
	style="height: 100vh">
	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-header primary-background text-white text-center">
						<span class="fa fa-user-plus fa-3x"></span><br>
						<p>Contact Us</p>
					</div>
					<div class="card-body">
						<form action="../Contact" method="post">
							<div class="form-group">
								<label for="name">Name:</label> <input type="text"
									class="form-control" id="name" name="name" required>
							</div>

							<div class="form-group">
								<label for="email">Email:</label> <input type="email"
									class="form-control" id="email" name="email" required>
							</div>

							<div class="form-group">
								<label for="message">Message:</label>
								<textarea class="form-control" id="message" name="message"
									rows="4" required></textarea>
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<br>
<div class="contact-section">
	<h2>Our Location</h2>
	<p>National Skill Training Institute Outer Ring Road Yeswanthpur
		Bengaluru- 560022</p>
	<div class="map">
		<iframe height="200"
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2884.1846391780623!2d77.53297898280253!3d13.025052504212589!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3afa12be42d630eb!2sNATIONAL%20SKILL%20TRAINING%20INSTITUTE%2C%20(Foremen%20Training%20Institute)!5e0!3m2!1sen!2sin!4v1595584317283!5m2!1sen!2sin"
			width="600" height="450" style="border: 0;" aria-hidden="false"
			tabindex="0"></iframe>
	</div>
</div>


<%@include file="../header_footer/footer.jsp"%>