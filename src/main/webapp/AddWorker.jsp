<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Worker</title>
<link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="Css\backpage.css" rel="stylesheet">

</head>
<body>
    <section class="h-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Add the details in register</h2>

              <form action="addworker">
              <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="name">Name</label>
                  <input type="text" id="name" name="name" class="form-control form-control-lg" required autofocus/>
                  <span></span>
                </div>
                <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="mobile">Mobile No</label>
                  <input type="text" id="mobile" name="mobile" class="form-control form-control-lg" required autofocus/>
                  <span></span>
                </div>

                <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="email">Your Email</label>
                  <input type="email" id="email" name="email" class="form-control form-control-lg" required autofocus/>
                  <span></span>
                </div>
                 <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="jobtype">Your JobType</label>
                  <input type="text" id="jobtype" name="jobtype" class="form-control form-control-lg" required autofocus/>
                  <span></span>
                </div>
                <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="experience">Your Experience</label>
                  <input type="number" id="experience" name="experience" class="form-control form-control-lg" required autofocus/>
                  <span></span>
                </div>
                

                <div class="d-flex justify-content-center">
                  <input  type="submit" data-mdb-button-init
                    data-mdb-ripple-init class="btn btn-success btn-block btn-lg gradient-custom-4 text-body m-3" value="Add">
                    <input type="button"class="btn btn-success btn-block btn-lg gradient-custom-4 text-body m-3" onclick="gotopage()" value="Cancel">
                </div>


              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function gotopage(){
            window.location.href = 'ViewWorkers.jsp';
        }
    </script>
</body>
</html>