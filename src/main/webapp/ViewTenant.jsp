<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.List"%>
<%@page import="com.models.Tenant"%>

<jsp:useBean id="obj" class="com.action.TenantAction"></jsp:useBean>
<%
List<Tenant> tenantdetails = obj.viewAllTenant();
%>
<head>
<meta charset="ISO-8859-1">
<title>Tenant view</title>
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
.fw-medium {
        font-weight: 500; 
    }
</style>
</head>
<body>
	<div class="container-fluid d-flex flex-column h-100">
		<jsp:include page="Jsp Pages/header.jsp" />
		<div class="row flex-grow-1">
			
			<div class="main col-12 d-flex flex-column bg-light p-3">

				<div class="col-12 d-flex">
					<input type="text" id="searchInput" class="form-control w-25 mr-2"
						placeholder="Enter the name">
					<button class="btn btn-primary" onclick="searchTenant()">Search</button>
				</div>
				
				<!--Code for details to update  -->
					<form id="updateForm" action="tenantupdate" method="post"
						style="display: none;">
						<input type="hidden" name="regno" id="regno">
						<input type="hidden" name="block" id="block">
						<input type="hidden" name="flat" id="flat">
						<input type="hidden" name="vehicle" id="vehicle">
						<input type="hidden" name="mobile" id="mobile">
						<input type="hidden" name="parking" id="parking">
					</form>
					<!--  -->
				
				<div class="container custom-container rounded-5 mt-5 shadow-lg p-5">
				<div class="header text-center mt-1">
					<h4 class="fw-medium">Tenant Details</h4>
				</div>
					<div class="table-responsive mt-5 w-100">
						<table class="table table-bordered table-striped text-center"
							id="detailsTable">
							<thead class="thead-dark">
								<tr>
									<th>Register No</th>
									<th>Name</th>
									<th>Block</th>
									<th>Flat No</th>
									<th>Address</th>
									<th>Vehicle Details</th>
									<th>Mobile No</th>
									<!-- <th>Id Proof</th>
									<th>Id Proof No</th> -->
									<th>In Date</th>
									<th>In Time</th>
									<th>Out Date</th>
									<th>Out Time</th>
									<th>Parking Slot</th>
									<!-- <th>Status</th> -->
									<td>Process</td>
								</tr>
							</thead>
							<tbody>
								<%
								for (Tenant i : tenantdetails) {
								%>
								<tr>
									<td><%=i.getRegisterNo()%></td>
									<td><%=i.getName()%></td>
									<td><%=i.getBlock()%></td>
									<td><%=i.getFlatNo()%></td>
									<td><%=i.getAddress()%></td>
									<td><%=i.getVehicleDetails()%></td>
									<td><%=i.getMobile()%></td>
									<%-- <td><%=i.getGovIdProof()%></td>
									<td><%=i.getGovId()%></td> --%>
									<td><%=i.getInDate()%></td>
									<td><%=i.getInTime()%></td>
									<td><%=i.getOutDate()%></td>
									<td><%=i.getOutTime()%></td>
									<td><%=i.getParkingSlot()%></td>
									<%-- <td><%=i.isStatus()%></td> --%>
									<td>
										<button class="btn btn-primary mx-2"
											onclick="submitForm('<%=i.getRegisterNo()%>', '<%=i.getBlock()%>', '<%=i.getFlatNo()%>', '<%=i.getVehicleDetails()%>', '<%=i.getMobile()%>', '<%=i.getParkingSlot()%>')">Update</button>
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
			
					<button class="btn btn-primary mx-2" onclick="gotopage()">Go
						back</button>
				</div>
			</div>
			
		</div>
	</div>

</body>
<script>
	function gotopage() {
		window.location.href = 'MainPage.jsp';
	}
	function submitForm(regNo, name, vehicle, mobile, parking) {
	    document.getElementById('regno').value = regNo;
	    document.getElementById('name').value = name;
	    document.getElementById('vehicle').value = vehicle;
	    document.getElementById('mobile').value = mobile;
	    document.getElementById('parking').value = parking;
	    document.getElementById('updateForm').submit();
	}

	function searchTenant() {
		const input = document.getElementById("searchInput").value
				.toLowerCase();
		const table = document.getElementById("detailsTable");
		const rows = table.getElementsByTagName("tr");
		let found = false;

		for (let i = 1; i < rows.length; i++) {
			const cells = rows[i].getElementsByTagName("td");
			let match = false;

			for (let j = 0; j < cells.length; j++) {
				const cellValue = cells[j].innerText.toLowerCase();
				if (cellValue.includes(input)) {
					match = true;
					break;
				}
			}

			if (match) {
				alert("Register No: " + cells[0].innerText + "\nName: "
						+ cells[1].innerText + "\nBlock: " + cells[2].innerText
						+ "\nFlat No: " + cells[3].innerText + "\nAddress: "
						+ cells[4].innerText + "\nVehicle Details: "
						+ cells[5].innerText + "\nMobile No: "
						+ cells[6].innerText + "\nId Proof: "
						+ cells[7].innerText + "\nId Proof No: "
						+ cells[8].innerText + "\nIn Date: "
						+ cells[9].innerText + "\nIn Time: "
						+ cells[10].innerText + "\nOut Date: "
						+ cells[11].innerText + "\nOut Time: "
						+ cells[12].innerText + "\nParking Slot: "
						+ cells[13].innerText + "\nStatus: "
						+ cells[14].innerText);
				found = true;
				break;
			}
		}

		if (!found) {
			alert("No tenant found with the given name.");
		}
	}
</script>

</html>
