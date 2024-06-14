<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<link href="https://cdn.lineicons.com/4.0/lineicons.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="Css\backpage.css" rel="stylesheet">

</head>
<body>
	<section class="vh-120 bg-image"
		style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-6">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">
								<h2 class="text-uppercase text-center mb-5">Create an
									account</h2>

								<form action="signup" method="post">

									<div data-mdb-input-init class="form-outline mb-4">
										<label class="form-label" for="name">Name</label> <input
											type="text" id="name" name="name"
											class="form-control form-control-lg" /> <span></span>
									</div>

									<div data-mdb-input-init class="form-outline mb-4">
										<label class="form-label" for="username">Username</label> <input
											type="text" id="username" name="username"
											class="form-control form-control-lg" /> <span></span>
									</div>

									<div data-mdb-input-init class="form-outline mb-4">
										<label class="form-label" for="password">Password</label> <input
											type="password" id="password" name="password"
											class="form-control form-control-lg" required /> <span></span>
									</div>

									<div data-mdb-input-init class="form-outline mb-4">
										<label class="form-label" for="confirmPassword">Re-Enter
											your password</label> <input type="password" id="confirmPassword"
											class="form-control form-control-lg" /> <span></span>
									</div>

									<div class="d-flex justify-content-center">
										<input type="submit" data-mdb-button-init data-mdb-ripple-init
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body"
											value="Register">
									</div>

									<p class="text-center text-muted mt-5 mb-0">
										Have already an account? <a href="Loginpage.jsp"
											class="fw-bold text-body"><u>Login here</u></a>
									</p>

								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>