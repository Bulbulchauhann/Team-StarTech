<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="style.css">

	<title>Admin Dashboard</title>

	
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<div class="d-flex align-items-center justify-content-between">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			
			<span class="text">Admin Panel</span>
		</a></div>
		<ul class="side-menu top">
			<li class="active">
				<a href="#">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>

            <li class="user">
                <a href="users.jsp">
                  <i class='bx bxs-user' ></i>  
                  <span class="text">Users</span>
                </a>
              </li>

            <li class="investor">
                <a href="investor.jsp">
                  <i class='bx bxs-user'></i> <span class="text">Investors</span>
                </a>
              </li>
            <li class="startup">
                <a href="startup.jsp">
                  <i class='bx bxs-user'></i> <span class="text">Startup</span>
                </a>
              </li>
            <li class="project">
                <a href="#">
                  <i class='bx bxs-briefcase'></i>
                  <span class="text">Projects</span>
                </a>
              </li>

                <li class="event">
                    <a href="#">
                      <i class='bx bxs-calendar'></i>
                      <span class="text">Events</span>
                    </a>
                  </li>

            <li class="report">
                <a href="#">
                  <i class='bx bxs-file-report'></i>
                  <span class="text">Reports</span>
                </a>
              </li>

           
            <li class="message">
            <a href="#">
                 <i class='bx bxs-message-square-dots'></i>
                 <span class="text">Message</span>
              </a>
             </li>

			<li>
				<a href="#">
					<i class='bx bxs-group' ></i>
					<span class="text">Team</span>
				</a>
			</li>
            
		</ul>
		<ul class="side-menu">
			<li>
				<a href="#">
					<i class='bx bxs-cog' ></i>
					<span class="text">Settings</span>
				</a>
			</li>
			<li>
				<a href="#" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Categories</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">5</span>
				
			</a>
			<a href="#" class="profile">
				<img src="img/people.jpeg">
			</a>
			
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
				<a href="#" class="btn-download">
					<i class='bx bxs-cloud-download' ></i>
					<span class="text">Download PDF</span>
				</a>
			</div>

			<ul class="box-info">
                    <li class="startup">
              <i class='bx bxs-calendar-check' ></i>
              <span class="text">
               <h3>1020</h3>
                  <p>Startup</p>
                </span>
                     </li>
				
                <li class="investor-metric">
                    <i class='bx bxs-group' ></i>
                    <span class="text">
                      <h3>2834</h3>
                      <p>Investors</p>
                    </span>
                  </li>
                <li class="startup-metric">
                    <i class="bx bxs-wallet"></i>  <span class="text">
                      <h3>2543</h3>
                      <p>Total Revenue</p>  </span>
                  </li>
			</ul>


			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Recent Activity</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table>
						<thead>
							<tr>
								<th>User</th>
								 <th>Investers</th>     <!--date -->
								<th>Startup</th>        <!--status-->
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<img src="img/people1.jpeg">
									<p>Bulbul</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people1.jpeg">
									<p>Pooja</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people2.jpeg">
									<p>Rahul</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status process">Process</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people2.jpeg">
									<p>Vivek</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people2.jpeg">
									<p>Sumit</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="todo">
					<div class="head">
						<h3>Todos</h3>
						<i class='bx bx-plus' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<ul class="todo-list">
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="not-completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="not-completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
					</ul>
				</div>
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="script.js"></script>
</body>
</html>