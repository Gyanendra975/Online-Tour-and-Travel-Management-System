<%-- 
    Document   : Hotel_booking_cancellation
    Created on : Feb 19, 2024, 2:25:59 PM
    Author     : MAYANK
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Booking Cancellation</title>
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <!-- Custom CSS -->
  <style>
    body {
      background-color: #f8f9fa;
    }
    .container {
      margin-top: 50px;
    }
  </style>
    </head>
    <body>
        <%
            
            if(request.getParameter("submit") != null){
            String Bid = request.getParameter("bookingId");
            String u_id = (String)session.getAttribute("user_id");

//            System.out.println(Bid);
           
            try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                    Statement st = con.createStatement();
                    String qry = "delete from bus_booking where Bus_Booking_ID = " +Bid;
                    st.execute(qry);
                    
                    String qry2 = "DELETE FROM payment_details WHERE user_id = '" + u_id + "' AND Remark = '" + "Bus Booking" + "'";
                    st.execute(qry2);
                    response.getWriter().write("<script>alert('Bookng has been cancelled'); window.location.href='UserIndex.jsp';</script>");
            }
           
            catch(Exception e){}
        
           }    
        %>
        <div class="container">
  <h2>Booking Cancellation</h2>
  <form action="" method ="post">
    <div class="form-group">
      <label for="bookingId">Booking ID:</label>
      <input type="text" class="form-control" id="bookingId" name="bookingId" required>
    </div>
    <div class="form-group">
      <label for="hotelName">Boarding:</label>
      <input type="text" class="form-control" id="hotelName" name="hotelName" required>
    </div>
    <div class="form-group">
      <label for="checkinDate">Destination:</label>
      <input type="text" class="form-control" id="checkinDate" name="checkinDate" required>
    </div>
    <button type="submit" class="btn btn-danger" name="submit">Cancel Booking</button>
  </form>
</div>

    </body>
</html>
