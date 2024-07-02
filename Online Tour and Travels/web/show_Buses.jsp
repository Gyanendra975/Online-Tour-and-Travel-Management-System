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
                        </div>
                    </div>

                </div>     
                <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            View Buses
                        </div>            

                        <div class="container">
                            <table class="table table-striped">
                                <thead>
                                    <tr style="background-color: #f8f9fa;">
                                        <th scope="col">S.No.</th>
                                        <th scope="col">Bus Name</th>
                                        <th scope="col">From</th>
                                        <th scope="col">Destination</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Bus Type</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <%

                                    Connection con;
                                    Statement st;
                                    ResultSet rs;
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                                        st = con.createStatement();
                                        String qry = "select * from bus_details";
                                        rs = st.executeQuery(qry);

                       //                    int i = 1;
                                        while (rs.next()) {

                       ////                        String b_date = rs.getString(6);
                       //                        String f_city = rs.getString(8);
                       //                        String t_city = rs.getString(9);
                       //                        String bus_name = rs.getString(2);
                       //                        
                       //                        if (f_city.equals(fcity) && t_city.equals(tcity)) {
                       //
                       //                                session.setAttribute("boarding",request.getParameter("FromCity"));
                       //                                session.setAttribute("destination",request.getParameter("ToCity"));

                                %>

                                <tr>

                                    <td><%= rs.getString(1)%></td>
                                    <td><%= rs.getString(2)%></td>
                                    <td><%= rs.getString(3)%></td>
                                    <td><%= rs.getString(4)%></td>
                                    <td><%= rs.getString(5)%></td>
                                    <td><%= rs.getString(6)%></td>
                                    <td><%= rs.getString(7)%></td>
                    <!--                <td><%= rs.getString(8)%></td>
                                    <td><%= rs.getString(9)%></td>
                                    <td><%= rs.getString(10)%></td>
                                    <td><%= rs.getString(11)%></td>
                                   <td><%= rs.getString(12)%></td>
                                    <td><%= rs.getString(13)%></td>-->

                                    <td>
                                        <form action="deleteBus" method="post">
                                            <input type="hidden" value="<%= rs.getString(1)%>" name="id" >
                                            <button class="btn btn-danger" name="bd" >Delete</button>
                                        </form>
                                    </td>
                                </tr>
                                <%

                                        }
                                    } catch (Exception e) {
                                    }
                                %>
                            </table>
                        </div>



                    </div>

                </div>



                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
            </div>



        </div>






        <script src="https://demo.dashboardpack.com/architectui-html-free/assets/scripts/main.js"></script>
    </body>
</html>
