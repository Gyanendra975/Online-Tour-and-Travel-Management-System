<%-- 
    Document   : index
    Created on : Feb 5, 2024, 1:18:11 PM
    Author     : MAYANK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home : Online Tour & Travels Management System </title>
        <link href="static/css/style.css" rel="stylesheet" />
        <link href="static/css/userNav.css" rel="stylesheet" />
        <link href="static/image/image2.jpg" rel="icon/jpeg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


        <script src="static/js/userNav.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <style>
            .navbar-nav .nav-link {
                color: white !important;
            }


        </style>

    </head>
    <body>

        <nav class="navbar sticky-top navbar-expand-lg bg-dark">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand nav-link" href="#" style="color:#b48608;"><b>OT&T</b></a>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="color: white;" >
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="login.html">LogIn</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-disabled="true" href="AdminLogin.jsp">Admin</a>
                        </li>
                    </ul>

                </div>
            </div>

        </nav>

        <div class="mt-2 p-2">
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="1500">
                        <img src="static/image/image1.jpg" class="d-block image" alt="...">
                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="static/image/image2.jpg " class="d-block image" alt="...">
                    </div>
                    <div class="carousel-item" data-bs-interval="2500">
                        <img src="static/image/image3.jpg" class="d-block image" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>   

        <div class="mt-4">
            <div class="row ">
                <div class = "col-sm-1">
                </div>
                <div class = "col-sm-2">
                    <div class="card" style="width: 18rem;">
                        <img src="static/image/NYC.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>

                </div>
                <div class = "col-sm-2">
                </div>
                <div class = "col-sm-2">
                    <div class="card" style="width: 18rem;">
                        <img src="static/image/SWT.jpg" class="card-img-top" alt="path not found">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class = "col-sm-2">
                </div>
                <div class = "col-sm-2">
                    <div class="card" style="width: 18rem;">
                        <img src="static/image/MAl.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class = "col-sm-1">
                </div>

            </div>
        </div>


    </body>

</html>