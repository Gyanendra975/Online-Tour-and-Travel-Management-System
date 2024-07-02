<%-- 
    Document   : Bus_details
    Created on : Jan 24, 2024, 1:57:34 PM
    Author     : MAYANK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                String dt = request.getParameter("date");
                String fcity = request.getParameter("FromCity");
                String tcity = request.getParameter("ToCity");

                Connection con;
                Statement st;
                ResultSet rs;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                    st = con.createStatement();
                    String qry = "select * from bus_details";
                    rs = st.executeQuery(qry);

                    int i = 1;
                    
                    while (rs.next()) {
                        
//                        String b_date = rs.getString(6);
                        String f_city = rs.getString(8);
                        String t_city = rs.getString(9);
                        String bus_name = rs.getString(2);
                        
                        if (f_city.equals(fcity) && t_city.equals(tcity)) {


                          
            %>

            <tr>
                <th scope="row"><%=i++ %></th>
                <td><%= rs.getString(2)%></td>
                <td><%= rs.getString(8)%></td>
                <td><%= rs.getString(9)%></td>
                <td><%= rs.getString(13)%></td>
                <td><%=dt%></td>
                <td><%= rs.getString(12)%></td>
                <td>
                    <form action="payment_gateway.jsp" method="post">
                            <input type="hidden" name="fromcity" value="<%= rs.getString(8)%>">
                            <input type="hidden" name="tocity" value="<%= rs.getString(9)%>">
                            <button class="btn btn-primary" name="bd" onclick="booknow()">Book Now</button>
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
