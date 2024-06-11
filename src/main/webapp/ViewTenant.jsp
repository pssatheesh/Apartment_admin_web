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
		<h1 class="header bg-light p-3 text-center text-uppercase">Title</h1>
		<div class="row flex-grow-1">
			<div class="leftside col-12 col-md-2 d-flex flex-column bg-dark p-3">
				<a href="#" class="d-flex align-items-center mb-3"> <svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-arrow-left-square-fill"
						viewBox="0 0 16 16">
                        <path
							d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1" />
                    </svg> <span class="ms-2">Back</span>
				</a>
				<div class="py-1 d-flex align-items-center">
					<a href="MainPage.jsp"><svg xmlns="http://www.w3.org/2000/svg"
							width="16" height="16" fill="currentColor" class="bi bi-house"
							viewBox="0 0 16 16">
                        <path
								d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5z" />
                    </svg> <span class="ms-2">Home</span></a>
				</div>
				<div class="py-1 d-flex align-items-center">
					<a href=""><svg xmlns="http://www.w3.org/2000/svg" width="16"
							height="16" fill="currentColor" class="bi bi-person-heart"
							viewBox="0 0 16 16">
                        <path
								d="M9 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0m-9 8c0 1 1 1 1 1h10s1 0 1-1-1-4-6-4-6 3-6 4m13.5-8.09c1.387-1.425 4.855 1.07 0 4.277-4.854-3.207-1.387-5.702 0-4.276Z" />
                    </svg> <span class="ms-2">Profile</span></a>
				</div>

				<div class="py-1 d-flex align-items-center">
					<a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16"
							height="16" fill="currentColor" class="bi bi-star"
							viewBox="0 0 16 16">
                        <path
								d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.56.56 0 0 0-.163-.505L1.71 6.745l4.052-.576a.53.53 0 0 0 .393-.288L8 2.223l1.847 3.658a.53.53 0 0 0 .393.288l4.052.575-2.906 2.77a.56.56 0 0 0-.163.506l.694 3.957-3.686-1.894a.5.5 0 0 0-.461 0z" />
                      </svg> <span class="ms-2">About</span></a>
				</div>
				<div class="py-1 d-flex align-items-center">
					<a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16"
							height="16" fill="currentColor" class="bi bi-star"
							viewBox="0 0 16 16">
                        <path
								d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.56.56 0 0 0-.163-.505L1.71 6.745l4.052-.576a.53.53 0 0 0 .393-.288L8 2.223l1.847 3.658a.53.53 0 0 0 .393.288l4.052.575-2.906 2.77a.56.56 0 0 0-.163.506l.694 3.957-3.686-1.894a.5.5 0 0 0-.461 0z" />
                      </svg> <span class="ms-2">Logout</span></a>
				</div>
			</div>
			<div class="main col-12 col-md-10 d-flex flex-column bg-light p-3">

				<div class="col-12 d-flex">
					<input type="text" id="searchInput" class="form-control w-25 mr-2"
						placeholder="Enter the name">
					<button class="btn btn-primary" onclick="searchTenant()">Search</button>
				</div>

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
									<th>Id Proof</th>
									<th>Id Proof No</th>
									<th>In Date</th>
									<th>In Time</th>
									<th>Out Date</th>
									<th>Out Time</th>
									<th>Parking Slot</th>
									<th>Status</th>
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
									<td><%=i.getGovIdProof()%></td>
									<td><%=i.getGovId()%></td>
									<td><%=i.getInDate()%></td>
									<td><%=i.getInTime()%></td>
									<td><%=i.getOutDate()%></td>
									<td><%=i.getOutTime()%></td>
									<td><%=i.getParkingSlot()%></td>
									<td><%=i.isStatus()%></td>
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
