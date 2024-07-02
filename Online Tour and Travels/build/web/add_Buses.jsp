<%-- 
    Document   : add_Buses
    Created on : Jan 28, 2024, 6:01:15 PM
    Author     : MAYANK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <style>
            form:height px
        </style>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Language" content="en">
        <link href="../static/css/style.css" rel="stylesheet">
        <link href="../static/css/userNav.css" rel="stylesheet">
        <script src="../static/js/userNav.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <title>Admin Dashboard : online tour & travel management system </title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
        <meta name="description" content="This is an example dashboard created using build-in elements and components.">
        <meta name="msapplication-tap-highlight" content="no">
        <link href="https://demo.dashboardpack.com/architectui-html-free/main.css" rel="stylesheet"></head>
    <body>

        <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
            <div class="app-header header-shadow">
                <div class="app-header__logo">
                    <div><h4 style="color:#b48608;"><b>OT&T</b></h4></div>
                    <div class="header__pane ml-auto">
                        <div>
                            <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="app-header__mobile-menu">
                    <div>
                        <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="app-header__menu">
                    <span>
                        <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                            <span class="btn-icon-wrapper">
                                <i class="fa fa-ellipsis-v fa-w-6"></i>
                            </span>
                        </button>
                    </span>
                </div>   
                <div class="app-header__content">
                    <div class="app-header-left">
                        <div class="search-wrapper">
                            <div class="input-holder">
                                <input type="text" class="search-input" placeholder="Type to search">
                                <button class="search-icon"><span></span></button>
                            </div>
                            <button class="close"></button>
                        </div>       
                    </div>



                    <div class="app-header-right">
                        <div class="header-btn-lg pr-0">
                            <div class="widget-content p-0">
                                <div class="widget-content-wrapper">

                                    <div class="widget-content-left  ml-3 header-user-info">
                                        <div class="widget-heading">
                                            Alina Mclourd
                                        </div>
                                        <div class="widget-subheading">
                                            VP People Manager
                                        </div>
                                    </div>
                                    <div class="widget-content-left">
                                        <nav class="nav navbar">

                                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0 profile-menu "> 
                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <div class="profile-pic">
                                                            <img src="https://source.unsplash.com/250x250?girl" alt="Profile Picture" style="width:50px;height:50px; border-radius:45px" class="circle ">
                                                        </div>
                                                        <!-- You can also use icon as follows: -->
                                                        <!--  <i class="fas fa-user"></i> -->
                                                    </a>
                                                    <ul class="dropdown-menu position-relative" aria-labelledby="navbarDropdown">
                                                        <li><a class="dropdown-item" href="#"><i class="fas fa-sliders-h fa-fw "></i> Admin</a></li>
                                                        <li><a class="dropdown-item" href="#"><i class="fas fa-cog fa-fw"></i>  </a></li>
                                                        <li><hr class="dropdown-divider"></li>
                                                        <li><a class="dropdown-item" href="Logout"><i class="fas fa-sign-out-alt fa-fw"></i> Log Out</a></li>
                                                    </ul>
                                                </li>
                                            </ul>


                                        </nav>
                                    </div>



                                </div>
                            </div>
                        </div>        
                    </div>


                </div>
            </div>        






            <div class="app-main">
                <div class="app-sidebar sidebar-shadow">
                    <div class="app-header__logo">
                        <div class="logo-src"></div>
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>    


                    <div class="scrollbar-sidebar">
                        <div class="app-sidebar__inner">
                            <ul class="vertical-nav-menu">
                                <li class="app-sidebar__heading">Dashboards</li>
                                <li>
                                    <a href="add_Buses.jsp" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        Add Bus
                                    </a>
                                </li>

                        </div>
                    </div>

                </div>     
                <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <h4>Add Cabs</h4>
                        </div>            

                        <div class="container" style="margin-bottom: 40px;">
                            <h2>Bus Registration</h2>
                            <form id="packageForm" action="Bus_add" method="post">
                                <div class="form-group" >
                                    <label for="vehiclename">Bus Name</label>
                                    <input type="text" class="form-control" id="packageName" name="vname" placeholder="Enter Bus Name" required>
                                </div>
                                <div class="form-group">
                                    <label for="v_no">Bus Number</label>
                                    <textarea class="form-control" id="packageDescription" name="vnumber" placeholder="Enter Bus Number" rows="1" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="oc">Owner Name</label>
                                    <input type="text" class="form-control" id="packageAmount" name="oname" placeholder="Enter Owner Name" required>
                                </div>

                                <div class="form-group">
                                    <label for="oc">Owner Contact</label>
                                    <input type="number" class="form-control" id="packageAmount" name="ocontact" placeholder="Enter Owner Contact" required>
                                </div>

                                <div class="form-group">
                                    <label for="dc">Driver Name</label>
                                    <input type="text" class="form-control" id="startAddress" name="dname" placeholder="Enter Driver Name" required>
                                </div>
                                <div class="form-group">
                                    <label for="singleRoom">Driver Contact</label>
                                    <input type="text" class="form-control" id="destinationAddress" name="dcontact" placeholder="Enter Driver contact" required>
                                </div>

                                <div class="form-group">
                                    <label for="src">Source Location</label>
                                    <input type="text" class="form-control" id="destinationAddress" name="sloc" placeholder="Enter Source Location" required>
                                </div>

                                <div class="form-group">
                                    <label for="destination">Destination</label>
                                    <input type="text" class="form-control" id="destinationAddress" name="dloc" placeholder="Enter Destination Location" required>
                                </div>

                                <div class="form-group">
                                    <label for="destination">Start Date</label>
                                    <input type="text" class="form-control" id="destinationAddress" name="sdate" placeholder="yyyy-mm-dd" required>
                                </div>

                                <div class="form-group">
                                    <label for="destination">Start Time</label>
                                    <input type="text" class="form-control" id="destinationAddress" name="stime" placeholder="Enter start timing" required>
                                </div>

                                <div class="form-group">
                                    <label for="busType">Bus Type</label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="btype" id="acBus" value="AC" required>
                                        <label class="form-check-label" for="acBus">AC Bus</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="btype" id="nonAcBus" value="Non-AC" required>
                                        <label class="form-check-label" for="nonAcBus">Non-AC Bus</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="price">price</label>
                                    <input type="text" class="form-control" id="destinationAddress" name="price" placeholder="Enter Price" required>
                                </div>

                                <button type="submit" class="btn btn-primary" id="addDestination">Add Bus</button>
                                <button type="reset" class="btn btn-secondary">Reset</button>
                            </form>
                        </div>


                    </div>

                </div>


                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
            </div>



        </div>






        <script src="https://demo.dashboardpack.com/architectui-html-free/assets/scripts/main.js"></script>
    </body>
</html>

