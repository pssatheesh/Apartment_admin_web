<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Registry</title>
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
								<h2 class="text-uppercase text-center mb-5">Add the details
									in register</h2>

								<form action="addguest">

									<div data-mdb-input-init class="form-outline mb-4">
										<label class="form-label" for="vehicle">Your Vehicle
											Number</label> <input type="text" id="vehicle" name="vehicle"
											class="form-control form-control-lg" required autofocus /> <span></span>
									</div>
									<div data-mdb-input-init class="form-outline mb-4">
										<label class="form-label" for="block">Block</label> <input
											type="text" id="block" name="block"
											class="form-control form-control-lg" required autofocus /> <span></span>
									</div>
									<div data-mdb-input-init class="form-outline mb-4">
										<label class="form-label" for="house">Flat No</label> <input
											type="text" id="house" name="house"
											class="form-control form-control-lg" required autofocus /> <span></span>
									</div>
									<div data-mdb-input-init class="form-outline mb-4">
										<label class="form-label" for="reason">Reason</label> <input
											type="text" id="reason" name="reason"
											class="form-control form-control-lg" required autofocus /> <span></span>
									</div>
									
									<div class="d-flex justify-content-center">
										<input type="submit" data-mdb-button-init data-mdb-ripple-init
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body m-3"
											value="Add"> 
											<input type="button"
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body m-3"
											onclick="gotopage()" value="Cancel">
									</div>

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
	<script>
        function gotopage(){
            window.location.href = 'Guest.jsp';
        }
    </script>
</body>
</html>