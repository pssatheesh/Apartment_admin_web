<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginPage</title>
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .login {
            min-height: 100vh;
        }
        .bg-image {
            background-image: url('https://images.unsplash.com/photo-1515263487990-61b07816b324?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D%27');
            background-size: cover;
            background-position: center;
        }
        .login-heading {
            font-weight: 300;
        }
        .btn-login {
            font-size: 0.9rem;
            letter-spacing: 0.05rem;
            padding: 0.75rem 1rem;
        }
    </style>
</head>
<body>
    <div class="container-fluid ps-md-0">
        <div class="row g-0">
            <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
            <div class="col-md-8 col-lg-6">
                <div class="login d-flex align-items-center py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9 col-lg-8 mx-auto">
                                <h3 class="login-heading mb-4">Welcome back!</h3>
                                
                                <form action="login" method="post">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInput" name="username" placeholder="Username">
                                        <label for="floatingInput">Username</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
                                        <label for="floatingPassword">Password</label>
                                    </div>
                                    <div class="form-check mb-3 d-flex justify-content-between">
                                        <div>
                                            <input class="form-check-input" type="checkbox" value="" id="rememberPasswordCheck">
                                            <label class="form-check-label" for="rememberPasswordCheck">Remember password</label>
                                        </div>
                                        <a class="small" href="#">Forgot password?</a>
                                    </div>
                                    <div class="d-grid">
                                        <input class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2" type="submit">
                                        <div class="text-center">
                                            <a class="small" href="Signup.jsp">I don't have an account?</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>