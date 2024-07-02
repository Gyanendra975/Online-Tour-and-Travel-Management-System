<%-- 
    Document   : cab_details
    Created on : Jan 28, 2024, 2:14:13 PM
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
    </head>
    <body>
         <center>
        <div class="container">
        <table class="table table-striped">
            <thead>
                <tr style="background-color: #f8f9fa;">
                    <th scope="col">S.No.</th>
                    <th scope="col">From</th>
                    <th scope="col">Destination</th>
                    <th scope="col">Price</th>
                    <th scope="col">Date</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            
                        <%
                String dt = request.getParameter("date");
                String source = request.getParameter("s_location");
                String destination = request.getParameter("d_location");
//                session.setAttribute("source",request.getParameter("s_location"));
//                session.setAttribute("dest",request.getParameter("d_location"));

                Connection con;
                Statement st;
                ResultSet rs;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                    st = con.createStatement();
                    String qry = "select * from cab_details";
                    rs = st.executeQuery(qry);
                    


                    int i = 1;
                    
                    while (rs.next()) {
                        
                        
                        String s_loc = rs.getString(8);
                        String d_loc = rs.getString(9);
                        if (s_loc.equals(source) && d_loc.equals(destination)) {

                          

            %>
                            <tr>
                <th scope="row"><%=i++ %></th>
                <td><%= rs.getString(8)%></td>
                <td><%= rs.getString(9)%></td>
                <td><%= rs.getString(10)%></td>            
                <td><%=dt%></td>
                
                <td>
                    <form action="payment_gateway.jsp" method="post">
                            <input type="hidden" name="src" value="<%= rs.getString(8) %>">
                            <input type="hidden" name="dest" value="<%= rs.getString(9) %>">
                            <button class="btn btn-primary" name="cd" onclick="booknow()">Book Now</button>
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
