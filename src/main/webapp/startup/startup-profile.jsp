<%@ include file="../header_footer/header.jsp"%>
<div class="container-fluid" style="margin-top: 50px;">
	<div class="row">
		<!-- Sidebar -->
		<div class="col-md-3 bg-success sidebar">
			<div class="text-center mb-4">
				<img src="../img/mentor1.jpg" alt="User Photo" class="profile-pic">
				<h5 class="mt-3"><%=user.getUsername()%></h5>
			</div>
			<nav class="nav flex-column">
				<a class="nav-link" href="startupDashboard.jsp">Dashboard</a> <a class="nav-link"
					href="addStartup.jsp">Profile update</a> <a class="nav-link"
					href="#">Messages</a>
				<form action="${pageContext.request.contextPath}/logout"
					method="post" style="display: inline;">
					<button type="submit" class="dropdown-item"
						style="background: none; border: none; padding: 0; margin: 0; color: inherit; text-align: center;">
						Logout</button>
				</form>
			</nav>
		</div>

		<!-- Main Content -->
		<div class="col-md-9">
			<h1 class="mb-4">Startup Profile</h1>
			<!-- startup Details Card -->
			<div class="card mb-4 shadow-sm text-start">
				<div class="card-header bg-success text-white">Startup Details
				</div>
				<div class="card-body">
					<h5 class="card-title">
						Welcome,
						<%=user.getUsername()%></h5>
					<p class="card-text">
						<strong>Email:</strong>
						<%=user.getEmail()%></p>
				</div>
			</div>

			<!-- Funding History Section -->
			<div class="mt-4">
				<h2 class="mb-3">Funding History</h2>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead class="table-success">
							<tr>
								<th>Funding Round</th>
								<th>Amount</th>
								<th>Date</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Series A</td>
								<td>$1M</td>
								<td>01/01/2022</td>
							</tr>
							<!-- Additional rows can be added here -->
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="../header_footer/footer.jsp"%>
