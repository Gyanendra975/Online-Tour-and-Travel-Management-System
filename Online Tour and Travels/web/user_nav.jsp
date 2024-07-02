<%-- 
    Document   : user_nav
    Created on : Feb 3, 2024, 12:03:11 PM
    Author     : MAYANK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .navbar-nav .nav-link {
            color: white !important;
        }

        body{
            background-color: #696969;
        }
    </style>
</head>
<body>

<%
    String username = (String) session.getAttribute("name_key");
%>

<nav class="navbar navbar-expand-lg navbar-light bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" style="color:#b48608;"><b>OT&T</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav" style="color: white;">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Contact Us</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Cancel Bookings
                    </a>
                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="Hotel_booking_cancellation.jsp" name = "HBC" value = "cancel">Hotel Bookings</a></li>
                        <li><a class="dropdown-item" href="bus_booking_cancellation.jsp">Bus Bookings</a></li>
                        <li><a class="dropdown-item" href="cab_booking_cancellation.jsp">Cab Bookings</a></li>
                    </ul>
                </li>
            </ul>
            <form style="margin-left: auto;">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="height: 40px; border-style:inset; background:  #dee1ec;" id="basic-addon1">@</span>
                    </div>
                    <input type="text" class="form-control" style="height: 40px; border-style:inset; background:  #dee1ec;" placeholder="" aria-label="Username" aria-describedby="basic-addon1" value= "<%= username%>">
                </div>
            </form>
            <div style="padding-left: 4px;">
                <a href="index.jsp" class="btn btn-danger" role="button">LogOut</a>
            </div>
        </div>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
