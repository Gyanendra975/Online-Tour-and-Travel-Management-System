<%-- 
    Document   : hotel_details
    Created on : Jan 25, 2024, 10:44:11 PM
    Author     : MAYANK
--%>

<%@page import="org.apache.coyote.http11.Constants"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            body {
                padding: 20px;
                /*background-color: #f8f9fa;*/
            }

            .container {
                margin-top: 20px;

            }
        </style>
    </head>
    <body>
    <center>
        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr style="background-color: #f8f9fa;">
                        <th scope="col">S.No.</th>

                        <th scope="col">Hotel Name</th>
                        <th scope="col">City</th>
                        <th scope="col">Price</th>
                        <th scope="col">Room Availability</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>


                <%
                    String cty = request.getParameter("city");
                    String typ = request.getParameter("type");

                    Connection con;
                    Statement st;
                    ResultSet rs;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                        st = con.createStatement();
                        String qry = "select * from hotel_details";
    //                    String type

                        rs = st.executeQuery(qry);
                        String Hcity = " ";
                        String Hname = " ";
                        String Htype = " ";
                        String Hprice = " ";

                        int i = 1;

                        while (rs.next()) {

                            String city = rs.getString(3);
                            String type = (typ.equals("single")) ? rs.getString(5) : rs.getString(6);
                            String name = rs.getString(2);
                            String price = rs.getString(4);

                            if (city.equals(cty)) {

                                Hcity = city;
                                Hname = name;
                                Hprice = price;


                                session.setAttribute("name", name);
                                session.setAttribute("indate",request.getParameter("indate"));
                                session.setAttribute("outdate",request.getParameter("outdate"));
                                session.setAttribute("type",request.getParameter("type"));
                %>
                <tr>
                    <th scope="row"><%=i++%></th>
                    <td><%= rs.getString(2)%></td>
                    <td><%= rs.getString(3)%></td>
                    <td><%= rs.getString(4)%></td>
                    <td><%= type%></td>

                    <td>
                        <form action="payment_gateway.jsp" method="post">
                            <input type="hidden" name="HotelName" value="<%= rs.getString(2)%>">
                            <button  type="submit" class="btn btn-primary" name="hd" onclick="booknow()">Book Now</button>
                        </form>
                    </td>
                </tr>


                <%
                            }

                        }

                    } catch (Exception e) {
                    }
                %>
            </table>
        </div>
    </center>


    <script src='static/js/functions.js'></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
