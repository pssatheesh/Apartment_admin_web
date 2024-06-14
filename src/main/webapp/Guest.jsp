<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.List"%>
<%@page import="com.models.Guest"%>

<jsp:useBean id="obj" class="com.action.GuestAction"></jsp:useBean>
<%
List<Guest> guestdetails = obj.viewAllGuest();
%>
<head>
<meta charset="ISO-8859-1">
<title>Guset View</title>
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
				<div class="container custom-container rounded-5 mt-5 shadow-lg p-5">
					<!--Code for send vehicle number to update  -->
					<form id="updateForm" action="updateguestout" method="post"
						style="display: none;">

						<input type="hidden" name="vehicle" id="vehicle">
					</form>
					<!--  -->
					<div class="header text-center mt-1">
						<h4 class="fw-medium">Guest Details</h4>
					</div>
					<div class="table-responsive mt-5 w-100">
						<table class="table table-bordered table-striped text-center">
							<thead class="thead-dark">
								<tr>
									<th>S.No</th>
									<th>Vehicle Details</th>
									<th>Block</th>
									<th>Flat No</th>
									<th>In Date</th>
									<th>In Time</th>
									<th>Out Date</th>
									<th>Out Time</th>
									<th>Parking Slot</th>
									<th>Reason</th>
									<th>Process</th>
								</tr>
							</thead>
							<tbody>
								<%
								for (Guest i : guestdetails) {
								%>

								<tr>
									<td><%=i.getsNo()%></td>
									<td><%=i.getVehicleDetails()%></td>
									<td><%=i.getBlock()%></td>
									<td><%=i.getHouseNo()%></td>
									<td><%=i.getInDate()%></td>
									<td><%=i.getInTime()%></td>
									<td><%=i.getOutDate()%></td>
									<td><%=i.getOutTime()%></td>
									<td><%=i.getParkingSlot()%></td>
									<td><%=i.getReason()%></td>
									<td>
										<button class="btn btn-primary mx-2"
											onclick="submitForm( '<%=i.getVehicleDetails()%>')">Update</button>
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
					<button class="btn btn-primary mx-2" onclick="gotoback()">Go
						back</button>
				</div>
			</div>


		</div>
	</div>


</body>
<script>
function gotoaddpage(){
    window.location.href = 'AddGuest.jsp';
}
function gotoback(){
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

<script>
       
       $(document).ready(function() {
           $('#addForm').on('submit', function(e) {
               e.preventDefault();

               // Get form values
               const vehicle = $('#vehicle').val();
               const vehicleType = $('#vehicleType').val();
               console.log(vehicleId)

               // Validate form values
               if (!vehicle) {
                   alert('Please fill out all fields.');
                   return;
               }

               
               
               // Reset the form
               $('#addForm')[0].reset();

               // Close the modal
               $('#addModal').modal('hide');
               });
           });
       });

 </script>
</html>