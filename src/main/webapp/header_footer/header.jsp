<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.ground.work.model.User"%>
<%@ page import="com.ground.work.model.Event"%>



<!DOCTYPE html>
<html>
<head>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/about.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/flip.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/mentor.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/programs.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/footer.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/logo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/userPro.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/profile.css">
<link href="${pageContext.request.contextPath}/Css/mystyle.css"
	rel="stylesheet">

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>✨Landing page</title>
</head>
<body>
	<header>
		<nav
			class="navbar navbar-expand-lg navbar-light bg-light primary-background fixed-top">
			<a class="navbar-brand text-light font-weight-bold logo-text logo"
				href="${pageContext.request.contextPath}/index.jsp"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mr-auto">
				</ul>
				<div class="form-inline my-2 my-lg-0 ">
					<ul class="navbar-nav mr-auto fs-1">
						<!-- Categories Dropdown -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-light font-weight-bold"
							href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> Categories </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item text-capitalize"
									href="${pageContext.request.contextPath}/pages/Startups.jsp">Startups</a>
								<a class="dropdown-item text-capitalize"
									href="${pageContext.request.contextPath}/investor/Investors.jsp">Investors</a>
								<a class="dropdown-item text-capitalize"
									href="${pageContext.request.contextPath}/mentors/viewMentors.jsp">Mentors</a>
								<a class="dropdown-item text-capitalize"
									href="${pageContext.request.contextPath}/pages/news.jsp">Latest
									news</a> <a class="dropdown-item text-capitalize"
									href="${pageContext.request.contextPath}/pages/events.jsp">Events</a>
								<a class="dropdown-item text-capitalize"
									href="${pageContext.request.contextPath}/pages/Programs.jsp">Our
									programs</a> <a class="dropdown-item text-capitalize"
									href="${pageContext.request.contextPath}/pages/about.jsp">Who
									we are</a> <a class="dropdown-item text-capitalize"
									href="${pageContext.request.contextPath}/pages/contact.jsp">Contact
									Us</a>
							</div></li>

<!-- If the user is logged in, show Profile dropdown -->
						<%
						User user = (User) session.getAttribute("user");
						if (user != null) { // Check if user object is not null
							String role = user.getRole();
						%>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="profileDropdown"
							role="button" data-toggle="dropdown" aria-expanded="false"> <img
								src="${pageContext.request.contextPath}/img/mentor1.jpg"
								alt="Profile Picture"
								style="width: 30px; height: 30px; border-radius: 50%;">
						</a>
							<ul class="dropdown-menu dropdown-menu-right"
								aria-labelledby="profileDropdown">
								<li><h5 class="card-title">
										Name:
										<%=user.getUsername()%></h5></li>
								<hr/>
								<li>
									<%
									if ("INVESTOR".equals(role)) {
									%> <a class="dropdown-item"
									href="${pageContext.request.contextPath}/investor/investor-profile.jsp"
									style="background: none; border: none; padding: 0; margin: 0; color: inherit; text-align: left;">
										Profile </a> 
										<%
                                      } else if ("STARTUP".equals(role)) {
                                        %> <a
									class="dropdown-item"
									href="${pageContext.request.contextPath}/startup/startup-profile.jsp"
									style="background: none; border: none; padding: 0; margin: 0; color: inherit; text-align: left;">
										Profile </a> 
						             <%
                                       } else {
                                      %> <a class="dropdown-item"
									href="${pageContext.request.contextPath}/user_pro/user-profile.jsp"
									style="background: none; border: none; padding: 0; margin: 0; color: inherit; text-align: left;">
										Profile </a> 
								<%
                                }
                                %>
								</li>
								<li>
									<form action="${pageContext.request.contextPath}/logout"
										method="post" style="display: inline;">
										<button type="submit" class="dropdown-item"
											style="background: none; border: none; padding: 0; margin: 0; color: inherit; text-align: left;">
											Logout</button>
									</form>
								</li>
							</ul></li>
						<%
						} else { // If the user is not logged in, show Login, Join Now, and Search
						%>
						<li class="nav-item"><a
							class="nav-link text-light font-weight-bold text-capitalize"
							href="${pageContext.request.contextPath}/pages/Programs.jsp">
								<span class="fa fa-user-circle"></span> Explore our Programs
						</a></li>
						<li class="nav-item"><a
							class="nav-link text-light font-weight-bold text-capitalize"
							href="${pageContext.request.contextPath}/register/Register.jsp">
								<span class="fa fa-share-alt"></span> Join Now
						</a></li>
						<li class="nav-item"><a
							class="nav-link text-light font-weight-bold text-capitalize"
							href="${pageContext.request.contextPath}/login/login.jsp"> <span
								class="fa fa-bell-o"></span> Log In
						</a></li>
						<li class="nav-item">
							<form class="form-inline" action="Search" method="get">
								<input class="form-control mr-sm-2" name="query" type="search"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
							</form>
						</li>
						<%
						}
						%>

					</ul>
				</div>
			</div>
		</nav>
	</header>