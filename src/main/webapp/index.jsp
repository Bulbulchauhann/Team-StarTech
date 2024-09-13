<%@page import="java.sql.*"%>
<%@include file="./header_footer/header.jsp" %>


<!-- //banner -->
<div
	class="container-fluid m-0 p-0 primary-background banner-background">
	<div class="jumbotron primary-background text-white">
		<div class="container">
			<h3 class="display-3" data-aos="fade-up" data-aos-offset="200"
				data-aos-duration="3000">Welcome to GroundWork !</h3>
			<p>The objective of creating a Startup Incubator website is to
				provide a platform that supports and nurtures startups and projects
				aimed at creating positive social change. The website will
				facilitate connections between entrepreneurs, mentors, investors,
				and other stakeholders. The primary goals include:</p>
			<a href="register/roleRegster.jsp">
				<button class="btn btn-outline-light btn-lg bg-success">
					<span class="fa fa-line-chart"></span><br>I AM A STARTUP
				</button>
			</a> <a href="register/roleRegster.jsp">
				<button class="btn btn-outline-light btn-lg bg-primary">
					<span class="fa fa-handshake-o"></span><br>I AM AN INVESTOR
				</button>
			</a>

		</div>
	</div>
</div>


<!-- cards -->
<div class="container ">
	<div class="row mb-5 ">
		<div class="col-md-4">
			<div class="flip-card">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./img/Startup.avif" alt="Startup"
							style="width: 300px; height: 300px;">
					</div>
					<div class="flip-card-back">
						<div class="card-body primary-background text-white text-center">
							<h5 class="card-title ">Startups</h5>
							<p class="card-text">Have an Idea for Startup? Get on board
								and take a flight to your business</p>
							<a href="pages/Startups.jsp" class="btn btn-primary">read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-4">
			<div class="flip-card">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./img/Investors.jpg" alt="Investors"
							style="width: 300px; height: 300px;">
					</div>
					<div class="flip-card-back">
						<div class="card-body primary-background text-white text-center">
							<h5 class="card-title">Investors</h5>
							<p class="card-text">Want to help the Society? Join us to
								make Society a better place</p>
							<a href="investor/Investors.jsp" class="btn btn-primary">read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-4">
			<div class="flip-card">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./img/partners.jpg" alt="partners"
							style="width: 300px; height: 300px;">
					</div>
					<div class="flip-card-back">
						<div class="card-body primary-background text-white text-center">
							<h5 class="card-title">Partners</h5>
							<p class="card-text">Connect and help us to put a smile on
								entreprenuer's face</p>
							<a href="pages/Partners.jsp" class="btn btn-primary">read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="flip-card">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./img/Event-Management.jpg" alt="Event-Management"
							style="width: 300px; height: 300px;">
					</div>
					<div class="flip-card-back">
						<div class="card-body primary-background text-white text-center">
							<h5 class="card-title">Events</h5>
							<p class="card-text">Meet and greet, discuss ideas and a
								place to found future business ventures.</p>
							<a href="pages/events.jsp" class="btn btn-primary">read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-4">
			<div class="flip-card">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./img/program.png" alt="program"
							style="width: 300px; height: 300px;">
					</div>
					<div class="flip-card-back">
						<div class="card-body primary-background text-white text-center">
							<h5 class="card-title">Our Program</h5>
							<p class="card-text">All programs</p>
							<a href="pages/Programs.jsp" class="btn btn-primary">read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-4">
			<div class="flip-card">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./img/Who we are.jpg" alt="Who we are"
							style="width: 300px; height: 300px;">
					</div>
					<div class="flip-card-back">
						<div class="card-body primary-background text-white text-center">
							<h5 class="card-title">Who we are</h5>
							<p class="card-text">We are a team on behalf of people, for
								the people trying to make India, a Country where Ideas become
								reality.</p>
							<a href="pages/about.jsp" class="btn btn-primary">read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="./header_footer/footer.jsp"%>