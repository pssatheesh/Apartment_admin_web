<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.List"%>
<%@page import="com.models.Worker"%>

<jsp:useBean id="obj" class="com.action.WorkerAction"></jsp:useBean>
<%
List<Worker> workers = obj.viewAvailableWorkers();
%>
<head>
<meta charset="ISO-8859-1">
<title>Worker details</title>
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

.hidden {
	display: none;
}

#detailsTable {
	width: 100%;
	border-collapse: collapse;
}

#detailsTable th, #detailsTable td {
	border: 1px solid #ddd;
	padding: 8px;
}

#detailsDialog {
	padding: 20px;
	border: 1px solid #ccc;
}

#view {
	display: none;
}
</style>
<script>
function hide() {
    document.getElementById('view').style.display = 'none';
}
</script>
</head>
<body>
	<div class="container-fluid d-flex flex-column h-100">
		<jsp:include page="Jsp Pages/header.jsp" />
		<div class="row flex-grow-1">
			<jsp:include page="Jsp Pages/leftside.jsp" />

			<div class="main col-12 col-md-10 d-flex flex-column bg-light p-3">
				<div class="header text-center mt-1">
					<h4 class="fw-medium">Available Worker details</h4>
				</div>
				<div class="container custom-container rounded-5 mt-5 shadow-lg p-5">
					<div class="table-responsive mt-5 w-100">
						<table class="table table-bordered table-striped text-center">
							<thead class="thead-dark">
								<tr>
									<th>Worker ID</th>
									<th>Name</th>
									<th>Mobile No</th>
									<th>Email</th>
									<th>Job Type</th>
									<th>Availability</th>
									<th>Experience</th>
								</tr>
							</thead>
							<tbody>
								<%
								for (Worker i : workers) {
								%>
								<tr>
									<td><%=i.getWorkerId()%></td>
									<td><%=i.getName()%></td>
									<td><%=i.getMobile()%></td>
									<td><%=i.getEmail()%></td>
									<td><%=i.getJobtype()%></td>
									<td><%=i.isAvailable()%></td>
									<td><%=i.getExperience()%></td>

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
					<button class="btn btn-primary mx-2" onclick="show()">View
						Workers</button>
					<button class="btn btn-primary mx-2" onclick="gotopage()">Goback</button>
				</div>
				<div class="main col-12 col-md-12 d-flex flex-column bg-light p-3"
					id="view" style="display: none !important">
					<div class="header text-center mt-1">
						<h4 class="fw-medium">Worker details</h4>
					</div>
					<!--Code for send vehicle number to update  -->
					<form id="updateForm" action="updateWorker" method="post"
						style="display: none;">

						<input type="hidden" name="wid" id="wid">
					</form>
					<!--  -->
					<%
					List<Worker> allworkers = obj.viewAllWorkers();
					%>
					<div
						class="container custom-container rounded-5 mt-5 shadow-lg p-5">
						<div class="table-responsive mt-5 w-100">
							<table class="table table-bordered table-striped text-center "
								id="detailsTable">
								<thead class="thead-dark">
									<tr>
										<th>Worker ID</th>
										<th>Name</th>
										<th>Mobile No</th>
										<th>Email</th>
										<th>Job Type</th>
										<th>Availability</th>
										<th>Experience</th>
										<th>Process</th>
									</tr>
								</thead>
								<tbody>
									<%
									for (Worker i : allworkers) {
									%>
									<tr>
										<td><%=i.getWorkerId()%></td>
										<td><%=i.getName()%></td>
										<td><%=i.getMobile()%></td>
										<td><%=i.getEmail()%></td>
										<td><%=i.getJobtype()%></td>
										<td><%=i.isAvailable()%></td>
										<td><%=i.getExperience()%></td>
										<td>
											<button class="btn btn-primary mx-2"
												onclick="submitForm( '<%=i.getWorkerId()%>')">Update</button>
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
							Worker</button>
						<button class="btn btn-primary mx-2" onclick="refreshPage()">Goback</button>
					</div>
				</div>

			</div>


		</div>


	</div>


</body>

<script>
function gotoaddpage(){
    window.location.href = 'AddWorker.jsp';
}  
function gotopage(){
    window.location.href = 'MainPage.jsp';
}
function submitForm(wid) {
    document.getElementById('wid').value = wid;
    document.getElementById('updateForm').submit();
}

function refreshPage() {
    location.reload();
}
function show()
{
    document.getElementById('view').style.display="block";
 //    document.getElementById('m').style.display="none";
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
               const vehicle = $('#wid').val();


               // Validate form values
               if (!vehicle) {
                   alert('Please fill out all fields.');
                   return;
               }

               $('#addForm')[0].reset();


               $('#addModal').modal('hide');
               });
           });
       });

 </script>
</html>