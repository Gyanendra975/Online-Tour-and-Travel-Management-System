<%-- 
    Document   : adminDashBoard
    Created on : Feb 4, 2024, 1:54:50 PM
    Author     : MAYANK
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <%

            Connection con;
            Statement st;
            ResultSet rs1;
            String count_hotels = "";
            String count_buses = "";
            String count_cabs = "";
            String count_users = "";
            String count_bookings = "";
            String count_reviews = "";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                st = con.createStatement();
                String qry = "select count(Hotel_Id) from hotel_details;";
                rs1 = st.executeQuery(qry);

                while (rs1.next()) {
                    count_hotels = rs1.getString(1);

                }

                ResultSet rs2;
                String qry2 = "select count(bus_id) from bus_details;";
                rs2 = st.executeQuery(qry2);

                while (rs2.next()) {
                    count_buses = rs2.getString(1);
                }

                ResultSet rs3;
                String qry3 = "select count(cab_id) from cab_details;";
                rs3 = st.executeQuery(qry3);

                while (rs3.next()) {
                    count_cabs = rs3.getString(1);
                }

                ResultSet rs4;
                String qry4 = "select count(User_ID) from Users;";
                rs4 = st.executeQuery(qry4);

                while (rs4.next()) {
                    count_users = rs4.getString(1);
                }

                ResultSet rs5;
                String qry5 = "SELECT (select count(Bus_Booking_ID) from bus_booking) + "
                        + "(select count(hotel_Booking_ID) from  hotel_booking) + "
                        + "(select count(Cab_Booking_ID) from  cab_booking )";

                rs5 = st.executeQuery(qry5);

                while (rs5.next()) {
                    count_bookings = rs5.getString(1);
                }

                ResultSet rs6;
                String qry6 = "select count(Review_ID) from reviews;";
                rs6 = st.executeQuery(qry6);

                while (rs6.next()) {
                    count_reviews = rs6.getString(1);
                }

            } catch (Exception e) {
            }

        %>

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

                    <div class="app-header-right">
                        <div class="header-btn-lg pr-0">
                            <div class="widget-content p-0">
                                <div class="widget-content-wrapper">

                                    <div class="widget-content-left  ml-3 header-user-info">
                                        <div class="widget-heading">

                                        </div>
                                        <div class="widget-subheading">

                                        </div>
                                    </div>
                                    <div class="widget-content-left">
                                        <nav class="nav navbar">

                                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0 profile-menu "> 
                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <div class="profile-pic">
                                                            <!--<img src="#" alt="Profile Picture" style="width:50px;height:50px; border-radius:45px" class="circle ">-->
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
                                    <a href="addDestination.html" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        Add Destination
                                    </a>
                                </li>
                                <br>
                                <li>
                                    <a href="add_Hotels.jsp" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        Add Hotels
                                    </a>
                                </li>
                                <br>
                                <li>
                                    <a href="add_Cabs.jsp" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        Add Cabs
                                    </a>
                                </li>

                                <br>

                                <li>
                                    <a href="add_Buses.jsp" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        Add Buses
                                    </a>
                                </li>

                                <br>

                                <li>
                                    <a href="show_Buses.jsp" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        View Buses
                                    </a>
                                </li>

                                <br>

                                <li>
                                    <a href="show_hotels.jsp" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        View Hotels
                                    </a>
                                </li>

                                <br>
                                <li>
                                    <a href="show_cabs.jsp" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        View Cabs
                                    </a>
                                </li>
                        </div>
                    </div>

                </div>     
                <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">

                        </div>            

                        <div class="row">
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-midnight-bloom">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">

                                            <div class="widget-heading">Total Registered Hotels </div>
                                            <div class="widget-subheading"></div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span> <%= count_hotels%></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-arielle-smile">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Total Registered Buses</div>
                                            <div class="widget-subheading"></div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span><%= count_buses%></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-grow-early">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Total Registered Cabs</div>
                                            <div class="widget-subheading"></div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span><%= count_cabs%></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-xl-none d-lg-block col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-premium-dark">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Products Sold</div>
                                            <!--<div class="widget-subheading">Revenue streams</div>-->
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-warning"><span>$14M</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content">
                                    <div class="widget-content-outer">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Total Users</div>
                                                <div class="widget-subheading"></div>
                                            </div>
                                            <div class="widget-content-right">
                                                <div class="widget-numbers text-success"><%= count_users%></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content">
                                    <div class="widget-content-outer">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Total Bookings</div>
                                                <!--<div class="widget-subheading">Revenue streams</div>-->
                                            </div>
                                            <div class="widget-content-right">
                                                <div class="widget-numbers text-warning"><%= count_bookings%></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content">
                                    <div class="widget-content-outer">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Reviews</div>
                                                <div class="widget-subheading"></div>
                                            </div>
                                            <div class="widget-content-right">
                                                <div class="widget-numbers text-danger"><%= count_reviews%></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-xl-none d-lg-block col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content">
                                    <div class="widget-content-outer">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Income</div>
                                                <div class="widget-subheading">Expected totals</div>
                                            </div>
                                            <div class="widget-content-right">
                                                <div class="widget-numbers text-focus">$147</div>
                                            </div>
                                        </div>
                                        <div class="widget-progress-wrapper">
                                            <div class="progress-bar-sm progress-bar-animated-alt progress">
                                                <div class="progress-bar bg-info" role="progressbar" aria-valuenow="54" aria-valuemin="0" aria-valuemax="100" style="width: 54%;"></div>
                                            </div>
                                            <div class="progress-sub-label">
                                                <div class="sub-label-left">Expenses</div>
                                                <div class="sub-label-right">100%</div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>



                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
            </div>



        </div>






        <script src="https://demo.dashboardpack.com/architectui-html-free/assets/scripts/main.js"></script>
    </body>
</html>
