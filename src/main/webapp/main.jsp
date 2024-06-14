<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>MainPage</title>
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .main
        {
            height: auto;
        }
        .container{
            height: auto;
        }
        #banner1{
            height:1000px;
        }
        img 
        { 
            background-size: cover;
            width:98%;
            height:400px;
            margin: 5px;
        }
        .custom-container 
        {
            max-width: 50%;
            animation: fadeIn 1s ease-in-out;
            flex-direction: column;
        }
        .custom-container .btn 
        {
            width: 100%; /* Make buttons full width */
        }
        .rooms
        {
            display: flex;
            padding:10px;
            
        }
        .con{
           width: 513px;
           height:400px;
           background-color: rgba(255, 244, 244, 0.014);
           padding-top: 10px;
           border-top: 20px;
           border-radius: 10px;
        } 
        .imgs
        {
            width: 516px;
            height: 400px;
            width: 50%;
            display: flex;
            border-radius: 20px;
        }
        .image
        {
            height: 1000px; 
        }
        .fea
        {
           display: flex;
        }
        .z
        {
           height: auto;
           width: auto;
        }
        .con
        {
            width: 50%;
            height: 100px;
        }
        
    </style>
    </head>
    <body>
    
        <div class="container-fluid d-flex flex-column">
            <jsp:include page="Jsp Pages/header.jsp" />
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <!-- Logo on the left side -->
        <a class="navbar-brand" href="#">Logo</a>

        <!-- Centered navigation links -->
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="main.jsp"><button class="btn btn-outline-info">Home</button></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><button class="btn btn-outline-info">Support</button></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><button class="btn btn-outline-info">About Us</button></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><button class="btn btn-outline-info">Contact</button></a>
                </li>
            </ul>
        </div>

        <!-- Buttons on the right side -->
        <div class="d-flex align-items-center">
            <button class="btn btn-success mx-1" onclick="gotoSignin()">Sign in</button>
            <button class="btn btn-success mx-1" onclick="gotoSignup()">Sign Up</button>
        </div>
    </div>
</nav>
            <div class="row">
                <div class="main col-12 col-md-12 bg-light p-3 border-radius-15px">
                    <div class="image  col-md-12"><img id="banner1" src="https://images.pexels.com/photos/439391/pexels-photo-439391.jpeg" ></div>
                    <div class="rooms">
                        <div class="con"> 
                             <h2>Luxury Bedding and Furnishings</h2>
                             <h6>Design</h6>
                             <ol>
                                <li>High-quality mattresses, pillows, and linens.</li>
                                <li>Stylish and comfortable furniture, including a headboard and nightstands.</li>
                                <li>Coordinated color schemes and textures for a cohesive look.</li>
                             </ol>
                             <ol>
                                 <h6>Benefits</h6>
                                 <li>Improves sleep quality.</li>
                                 <li>Adds a touch of luxury and enhances the overall aesthetic.</li>
                             </ol>
                        </div>
                        <div class="imgs"> <img src="image/bedroom-4696556_1280.jpg"></div>
                    </div>
                    <div class="rooms">
                        <div class="imgs"> <img src="image/bed-1839183_1280.jpg"></div>
                        <div class="con">
                            <h2> Multipurpose Furniture</h2>
                            <ol>
                                <li>A bed with built-in drawers or a loft bed to free up floor space.</li>
                                <li>A desk that doubles as a vanity with a fold-up mirror.</li>
                                <li>A fold-out sofa bed for versatility.</li>
                            </ol>
                                <br>
                            <h6>Benefits</h6>
                            <ol>
                                <li>Combines multiple functions into one piece, saving space.</li>
                                <li>Increases the room's functionality.</li>
                            </ol>
                        </div>
                    </div>
                    <div class="rooms">
                      <div class="con"> 
                         <h2>Kitchen</h2>
                         <ol>
                            <li>Kitchen islands with seating for an open, social space.</li>
                            <li>Open shelving or glass-front cabinets to create an open feel.</li>
                            <li>Sliding or pocket doors to create a seamless transition to other living areas.</li>
                         </ol>
                         <h6>Benefits</h6>
                         <ol>
                            <li>Encourages interaction and a spacious feel.</li>
                            <li>Integrates the kitchen with living and dining areas.</li>
                         </ol>
                      </div>
                      <div class="imgs"> <img src="image/beautiful-kitchen-interior-design_23-2150976532.jpg"></div>
                     
                    </div>
                    <div class="rooms">
                        <div class="imgs"> <img src="image/bathroom-rugs.jpg"></div>
                        <div class="con">
                            <ol>
                                <h4>En-suite Bathroom</h6>
                                <li>An attached bathroom featuring high-end fixtures, a shower, bathtub, double sinks, and heated floors.</li>
                                <br>
                                <h6>Benefits</h6>
                                <li>Offers convenience and privacy, enhances the comfort of the master suite, and increases the apartment’s value.</li>
                            </ol>
                        </div>
                    </div>
                    <br>
                    <div class="co">
                        <div class="d-flex justify-content-center ">
                            <div class="border border-dark px-5 pt-5" >
                                <h2 >Apartment Feature </h2> 
                          
                            <ol> 
                              <li>Spacious 1BHK/Compact 2BHK-618sq.ft</li>
                              <li>Regular 2BHK 925-933 sq.bt</li>
                              <li>500+ Families Living in</li>
                              <li>Power Backup</li>
                              <li>Fully Functional Ultra Modern Club House</li>
                              <li>Super Market</li>
                              <li>ATM</li>
                              <li>Swimming Pool</li>
                              <li>Airconditioned GYM</li>
                              <li>Table Tennis</li>
                            </ol>
                            </div>
                            
                        </div>
                         
                    </div>
                    <div class="fea">
                        <div class="z"> <img src="image/1000_F_479178317_NFSyfKGAAixwdXsed7qPMbihsVCb8E9A.jpg"></div>
                        <div class="z"> <img src="image/800px-Backyardpool.jpg"></div>
                        <div class="z"> <img src="image/Atm-Machine-1-768x766.jpg"></div>
                        <div class="z"> <img src="image/Jims_Kuurne-74.jpg"></div>  
                    </div>
                    <div class="des">
                        <p>
                           Discover our modern apartments that cater to all your lifestyle needs. 
                           Enjoy access to a fully equipped gym for your fitness goals and ample 
                           parking space for your convenience. Relax and unwind at our sparkling 
                           swimming pool and BBQ area, perfect for social gatherings. 
                           Benefit from our 24/7 security and on-site maintenance, 
                           ensuring peace of mind and prompt assistance. 
                           Embrace a vibrant community with landscaped gardens and a pet-friendly environment.
                        </p> 
                    </div>
                </div>  
                <div class="footer bg-light p-3 text-center">
                   Footer
                </div>    
            </div>    
        </div> 
        <script>
           function  gotoSignup() 
           {
        	   window.location.href = 'Signup.jsp';   
           }
           function gotoSignin()
           {
        	   window.location.href = 'Loginpage.jsp';
           }
        </script>
    </body>
 </html>