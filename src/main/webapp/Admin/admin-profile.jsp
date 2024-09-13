<%@ include file="../header_footer/header.jsp" %>
<div class="container mt-5">
	<h1 class="mb-4">Admin Profile</h1>
	<div>
		<a class="nav-link text-primary font-weight-bold text-center"
			href="eventForm.jsp">Event Register</a>
	</div>
	

	<div class="card mb-4 shadow-sm">
		<div class="card-header bg-primary text-white">Admin Details</div>
		<div class="card-body">
			<h5 class="card-title">
				Welcome,
				<%=user.getUsername()%>
			</h5>
			<p class="card-text">
				<strong>Email:</strong>
				<%=user.getEmail()%>
			</p>
		</div>
	</div>
</div>

<%@include file="../header_footer/footer.jsp"%>