<%@ include file="../header_footer/header.jsp"%>

<h2 class="text-center my-4">Add Mentor</h2>
<form action="mentor" method="post" enctype="multipart/form-data"
	class="container">
	<div class="mb-3">
		<label for="name" class="form-label">Name:</label> <input type="text"
			class="form-control" id="name" name="name" required>
	</div>
	<div class="mb-3">
		<label for="industry" class="form-label">Industry:</label> <input
			type="text" class="form-control" id="industry" name="industry"
			required>
	</div>
	<div class="mb-3">
		<label for="expertise" class="form-label">Expertise:</label> <input
			type="text" class="form-control" id="expertise" name="expertise"
			required>
	</div>
	<div class="mb-3">
		<label for="bio" class="form-label">Bio:</label>
		<textarea class="form-control" id="bio" name="bio" rows="3"></textarea>
	</div>
	<div class="mb-3">
		<label for="contact" class="form-label">Contact:</label> <input
			type="text" class="form-control" id="contact" name="contact">
	</div>
	<div class="text-center">
		<input type="submit" class="btn btn-primary" value="Add Mentor">
	</div>
</form>

<%@include file="../header_footer/footer.jsp"%>
