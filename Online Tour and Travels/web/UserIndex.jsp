<%-- 
    Document   : UserIndex
    Created on : Feb 2, 2024, 10:04:25 PM
    Author     : MAYANK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <title>User Index</title>
        <style>


            .container {
                margin-top: 200px;

            }
        </style>
    </head>
    <body>

        <%@ include file="user_nav.jsp" %>
        <div>
            <div class="container"container d-flex justify-content-center align-items-center>
                <h2 class="text-center mb-4"></h2>

                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body" style="background: #ffb6b9; border-style: groove; border-radius: 5px;">
                                <h5 class="card-title">Hotel Booking</h5>
                                <p class="card-text">Book your stay at the best hotels.</p>
                                <a href="hotel_booking.html" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body"style="background: #fcff82; backdrop-filter: blur(50px); border-style: groove;border-radius: 5px;">
                                <h5 class="card-title">Cab Service</h5>
                                <p class="card-text">Travel with comfort to your destination.</p>
                                <a href="cab_booking.html" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body" style="background:#bbded6; border-style: groove;border-radius: 5px;">
                                <h5 class="card-title">Bus Booking</h5>
                                <p class="card-text">Enjoy a comfortable bus journey.</p>
                                <a href="bus_booking.html" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  



        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
