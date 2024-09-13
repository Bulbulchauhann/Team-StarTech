<%@ include file="../header_footer/header.jsp"%>

<main class="primary-background  banner-background"
	style="padding-bottom: 80px;">

	<div class="container mt-5 pt-5">

		<div class="col-md-6 offset-md-3">

			<div class="card">
				<div class="card-header text-center primary-background text-white">
					<span class="fa fa-3x fa-user-circle"></span> <br> Register
					here
				</div>
				<%
				String regMsg = (String) session.getAttribute("reg-msg");
				if (regMsg != null) {
				%>

				<div class="alert alert-success" role="alert"><%=regMsg%>Login..<a
						href="login.jsp">click here</a>
				</div>

				<%
				}
				%>
				<div class="card-body">
					<form id="reg-form" action="../signup" method="POST">
					
                       <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-outline-primary me-2" onclick="changePlaceholder()">
                            <input type="radio" id="INVESTOR" name="role" value="INVESTOR" autocomplete="off" > 
                            INVESTOR
                        </label>
                        <label class="btn btn-outline-success" onclick="changePlaceholder()">
                            <input type="radio" id="STARTUP" name="role" value="STARTUP" autocomplete="off" > 
                            STARTUP
                        </label>
                    </div>
						<div class="form-group">
							<label for="username"></label> <input name="username" type="text"
								class="form-control" id="username" placeholder="Enter name">
						</div>

						<div class="form-group">
							<label for="InputEmail"></label> <input name="email" type="email"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter email" required>
							<small id="emailHelp" class="form-text text-muted">We'll
								never share your email with anyone else.</small>
						</div>

						<div class="form-group">
							<label for="InputPassword"></label> <input name="password"
								type="password" class="form-control" id="exampleInputPassword1"
								placeholder="Password" required>
						</div>

						<button id="sumbimt-btn" type="submit"
							class="btn btn-primary text-center font-weight-bold">SignUp</button>
						<div class="nav-item">
							<a class="nav-link text-primary font-weight-bold text-center"
								href="login.jsp">If already have account?</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</main>

<script>
function changePlaceholder() {
    const investorRadio = document.getElementById('INVESTOR');
    const startupRadio = document.getElementById('STARTUP');
    const usernameInput = document.getElementById('username');
    
    if (investorRadio.checked) {
        usernameInput.placeholder = "Enter investor name";
        usernameInput.required = true;
    } else if (startupRadio.checked) {
        usernameInput.placeholder = "Enter startup name";
        usernameInput.required = true;
    } else {
        usernameInput.placeholder = "Enter name";
        usernameInput.required = false;
    }
}
</script>
<%@include file="../header_footer/footer.jsp"%>
