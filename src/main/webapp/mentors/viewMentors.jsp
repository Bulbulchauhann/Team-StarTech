<%@ include file="../header_footer/header.jsp" %>
<%@ page import="com.ground.work.model.Mentor"%>
<%@ page import="java.util.List, java.util.Map" %>
<%
@SuppressWarnings("unchecked")
    List<Map<String, String>> mentorList = (List<Map<String, String>>) request.getAttribute("mentorList");

    if (mentorList != null && !mentorList.isEmpty()) {
%>
<section class="team my-5 text-center">
    <div class="container">
        <div class="text-center my-5">
            <h1><span class="text-primary">Mentors</span></h1>
            <hr class="w-25 m-auto">
        </div>
        <div class="row">
            <% 
                for (Map<String, String> mentorData : mentorList) {
            %>
            <div class="col-sm-12 col-md-3 col-lg-3 col-12">
                <div class="card">
                    <!-- Displaying mentor image, if any image URL is stored in the mentorData -->
                    <img src="<%= mentorData.get("image_url") != null ? mentorData.get("image_url") : "../img/mentor1.jpg" %>" 
                         class="img-fluid rounded-start" alt="Mentor Image">
                    <div class="card-body">
                        <!-- Displaying mentor name -->
                        <h5 class="card-title"><%= mentorData.get("name") %></h5>
                        
                        <!-- Displaying mentor industry and expertise -->
                        <p class="card-text"><%= mentorData.get("industry") %></p>
                        <p class="card-text"><%= mentorData.get("expertise") %></p>

                        <!-- Displaying mentor bio -->
                        <p class="card-text"><small class="text-muted"><%= mentorData.get("bio") %></small></p>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</section>
<%
    } else {
%>
    <section class="team my-5 text-center">

	<div class="container">
		<div class="text-center my-5">
			<h1>
				<span class="text-primary">Mentors</span>
			</h1>
			<hr class="w-25 m-auto">
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-3 col-lg-3 col-12 ">
				<div class="card">
					<img src="../img/mentor1.jpg" class="img-fluid rounded-start"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">Rahul kumar Verma</h5>
						<p class="card-text"></p>
						<p class="card-text">
							<small class="text-muted"></small>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-3 col-lg-3 col-12 ">
				<div class="card">
					<img src="../img/mentor1.jpg" class="img-fluid rounded-start"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">Bulbul Singh Chauhan</h5>
						<p class="card-text"></p>
						<p class="card-text">
							<small class="text-muted"></small>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-3 col-lg-3 col-12 ">
				<div class="card">
					<img src="../img/mentor1.jpg" class="img-fluid rounded-start"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">Vivek kumar Maurya</h5>
						<p class="card-text"></p>
						<p class="card-text">
							<small class="text-muted"></small>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-3 col-lg-3 col-12 ">
				<div class="card">
					<img src="../img/mentor1.jpg" class="img-fluid rounded-start"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">Pooja patel</h5>
						<p class="card-text"></p>
						<p class="card-text">
							<small class="text-muted"></small>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%
    }
%>


<%@ include file="../header_footer/footer.jsp" %>

