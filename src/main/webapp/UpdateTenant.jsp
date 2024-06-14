<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Tenant</title>
<link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="Css\backpage.css" rel="stylesheet">
</head>
<body>
<section id="maincolor" class="h-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container" style="height:100vh">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Add the details in register</h2>

              <form action="updatetenant">
              <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="regno">Name</label>
                  <input type="text" id="regno" name="regno" class="form-control form-control-lg" required autofocus/>
                  <span></span>
                </div>
              	<!-- <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="block">Block</label>
                  <select type="text" id="selection" name="selection" class="form-control form-control-lg" required autofocus>
                  <option>--select--</option>
                  <option>Block</option>
                  <option>Flat_No</option>
                  <option>Vehicle_details</option>
                  <option>Mobile_No</option>
        			</select>
                </div> -->

                <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="mobile">Mobile Number</label>
                  <input type="text" id="mobile" name="mobile" class="form-control form-control-lg" required autofocus/>
                  <span></span>
                </div>


                <div class="d-flex justify-content-center">
                  <input  type="submit" data-mdb-button-init
                    data-mdb-ripple-init class="btn btn-success btn-block btn-lg gradient-custom-4 text-body m-3" value="Update">
                    <button class="btn btn-success btn-block btn-lg gradient-custom-4 text-body m-3" onclick="gotoback()" >Cancel</button>
                </div>


              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
    function gotoback(){
    	window.location.href = 'MainPage.jsp';
    }
    </script>
</html>