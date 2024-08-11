<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>
<link href="https://cdn.lineicons.com/4.0/lineicons.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("user")==null){
	response.sendRedirect("Loginpage.jsp");
}
%>
<style>
.main {
	border: 1px solid black;
   background-image: url('image/nate-watson-Ib_nblJ2Jis-unsplash.jpg');
   background-size: cover ;
}
.container{
   background-color: rgba(0, 0, 0, 0.041);
}
.custom-container {
	max-width: 50%;
	animation: fadeIn 1s ease-in-out; 
	flex-direction: column;
}

.custom-container .btn {
	width: 100%;
}

details {
	width: 100%;
}

summary {
	font-weight: bold;
	cursor: pointer;
	padding: 10px;
	background-color: #f8f9fa;
	border: 1px solid #dee2e6;
	border-radius: 0.5rem;
	margin-bottom: 5px;
}

summary::-webkit-details-marker {
	display: none;
	text-align: center;
}

details[open] summary {
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
}

details[open]>summary+* {
	animation: open 0.3s ease-in-out;
}

@
keyframes open { 0% {
	opacity: 0;
	transform: translateY(-10px);
}
100
%
{
opacity
:
1;
transform
:
translateY(
0
);
}
}
</style>
</head>
<body>
	<div class="container-fluid d-flex flex-column h-100">
		<!-- <h1 class="header bg-light p-3 text-center text-uppercase">SS
			Apartment</h1> -->
			<jsp:include page="Jsp Pages/header.jsp" />
		<div class="row flex-grow-1">
		<jsp:include page="Jsp Pages/leftside.jsp" />
			
			<div class="main col-7 col-md-10 bg-light p-3 border-radius-7px">
				<div class="container custom-container rounded-5 mt-5 shadow-lg p-5 d-flex justify-content-center">
					<a href="DailyRegister.jsp"><button
							class="btn btn-primary p-3 m-2" value="register" name="register">Daily
							Register</button></a> <a href="Guest.jsp"><button
							class="btn  btn-primary p-3 m-2">Guest</button></a>
					<details class="mb-2">
						<summary class="btn  btn-primary p-3 m-2">Tenant</summary>
						<div>
							<button class="btn btn-secondary w-100 p-3 m-2">
								<a href="AddTenant.jsp" class="text-decoration-none text-dark">Add
									New Tenant</a>
							</button>
						</div>
						<div>
							<button class="btn btn-secondary w-100 p-3 m-2">
								<a href="ViewTenant.jsp" class="text-decoration-none text-dark">View
									Tenant</a>
							</button>
						</div>
						<div>
							<button class="btn btn-secondary w-100 p-3 m-2">
								<a href="UpdateTenant.jsp" class="text-decoration-none text-dark">Update
									Tenant</a>
							</button>
						</div>
						<div>
							<button class="btn btn-secondary w-100 p-3 m-2">
								<a href="VacatTenant.jsp" class="text-decoration-none text-dark">Vacate
									Tenant</a>
							</button>
						</div>
					</details>
					<!-- <a href="AddTenant.jsp"><button class="btn btn-primary p-3 m-2">Tenant</button></a> -->
					<a href="ViewWorkers.jsp"><button class="btn  btn-primary p-3 m-2">Admin
							Works</button></a>
				</div>

			</div>
		</div>
		<div class="footer bg-light p-3 text-center">Footer</div>
	</div>
</body>
</html>