<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.List"%>
<%@page import="com.models.Register"%>

<jsp:useBean id="obj" class="com.action.RegisterAction"></jsp:useBean>
<%
List<Register> reg = obj.viewRegistry();
%>
<head>
<meta charset="ISO-8859-1">
<title>Daily Register</title>
<link href="https://cdn.lineicons.com/4.0/lineicons.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.custom-container {
	max-width: 100%;
	animation: fadeIn 1s ease-in-out;
	flex-direction: column;
	border-radius: 15%;
}

a {
	text-decoration: none;
}

.fw-medium {
	font-weight: 500;
}
</style>
</head>
<body>
	<div class="container-fluid d-flex flex-column h-100">
		<jsp:include page="Jsp Pages/header.jsp" />
		<div class="row flex-grow-1">
		<jsp:include page="Jsp Pages/leftside.jsp" />
			
			<div class="main col-12 col-md-10 d-flex flex-column bg-light p-3">
				<div class="header text-center mt-1">
					<h4 class="fw-medium">Daily Registry</h4>
				</div>
				<div class="container custom-container rounded-5 mt-5 shadow-lg p-5">
					<!--Code for send vehicle number to update  -->
					<form id="updateForm" action="regupdateindetails" method="post"
						style="display: none;">

						<input type="hidden" name="vehicle" id="vehicle">
					</form>
					<!--  -->

					<div class="table-responsive mt-5 w-100">
						<table class="table table-bordered table-striped text-center">
							<thead class="thead-dark">
								<tr>
									<th>S.No</th>
									<th>Register No</th>
									<th>Name</th>
									<th>Vehicle Details</th>
									<th>Out Date</th>
									<th>Out Time</th>
									<th>In Date</th>
									<th>In Time</th>
									<th>Process</th>
								</tr>
							</thead>
							<tbody>
								<%
								for (Register i : reg) {
								%>
								<tr>
									<td><%=i.getsNo()%></td>
									<td><%=i.getRegNo()%></td>
									<td><%=i.getName()%></td>
									<td><%=i.getVehicle()%></td>
									<td><%=i.getOutDate()%></td>
									<td><%=i.getOutTime()%></td>
									<td><%=i.getInDate()%></td>
									<td><%=i.getInTime()%></td>
									<td>
										<button class="btn btn-primary mx-2"
											onclick="submitForm( '<%=i.getVehicle()%>')">Update</button>
									</td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>

					</div>
				</div>
				<div
					class="main d-flex justify-content-center align-items-center my-3">
					<button class="btn btn-primary mx-2" onclick="gotoaddpage()">Add
						entry</button>
					<button class="btn btn-primary mx-2" onclick="gotopage()">Go
						back</button>
				</div>
			</div>

		</div>
	</div>
	
</body>

<script>
function gotoaddpage(){
    window.location.href = 'Addregister.jsp';
}  
function gotopage(){
    window.location.href = 'MainPage.jsp';
}
function submitForm(regNo) {
    document.getElementById('vehicle').value = regNo;
    document.getElementById('updateForm').submit();
}
</script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</html>