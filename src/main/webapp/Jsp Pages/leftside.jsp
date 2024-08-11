<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="leftside col-12 col-md-2 d-flex flex-column bg-dark p-3">
				
				<div class="py-1 d-flex align-items-center">
					<a href="main.jsp"><svg xmlns="http://www.w3.org/2000/svg"
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
					<a href="logout" action="logout">
                 <span class="ms-2">Logout</span></a>
				</div>
			</div>
</body>
</html>