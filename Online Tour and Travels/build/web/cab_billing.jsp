<%-- 
    Document   : cab_billing
    Created on : Feb 7, 2024, 11:43:50 AM
    Author     : MAYANK
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <style>
            @media print {
                #print-button {
                    display: none;
                }
            }
        </style>
    </head>
    <body>
        <%
            String dt = request.getParameter("date");

            String umail = (String) session.getAttribute("email_key");
            String uname = (String) session.getAttribute("name_key");
            
           String board = request.getParameter("src");
           String d_loc = request.getParameter("dest");


            
            

            String Sname = "";
            String Dname = "";
            String Cprice = "";
            String Cnmbr = "";
            String Cid = "";
            String Driver_name = "";
            String Driver_contact = "";
            String uid = "";
            String CBid = "";
            
//            payment
            String amount = "";
            String u_id = (String)session.getAttribute("user_id");
            String date = (String)session.getAttribute("date");
            String remark = "Cab Booking";
            
//            card
            String card_nmbr = request.getParameter("card_no");
            String holder_name = request.getParameter("card_holder_name");
            
            
            Connection con;
            Statement st;
            ResultSet rs;
            PreparedStatement ps;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                st = con.createStatement();
                String qry = "select * from cab_details where source_location='" + board + "' and destination = '" + d_loc + "' ";
                rs = st.executeQuery(qry);
              
                while (rs.next()) {
                    Cid = rs.getString(1);
                    Cnmbr = rs.getString(3);
                    Driver_name = rs.getString(6);
                    Driver_contact = rs.getString(7);
                    Sname = rs.getString(8);
                    Dname = rs.getString(9);
                    Cprice = rs.getString(10);
                }
                System.out.println(Cid);
                ResultSet rs2;
                String qry2 = "select * from users where Email = '" + umail + "'";
                rs2 = st.executeQuery(qry2);

                while (rs2.next()) {
                    uid = rs2.getString(1);
                }

                ps = con.prepareStatement("insert  into cab_booking(cab_id,User_ID,Booking_Date,Boarding,Destination,price) values('" +Cid+ "','" +uid+ "','" +dt+ "','" +Sname+ "','" +Dname+ "','" +Cprice+ "')");
                ps.executeUpdate();
                System.out.println("data inserted");

                ResultSet rs3;
                String qry3 = "select Cab_Booking_ID from cab_booking where User_ID = '" + uid + "' and cab_id = '" + Cid + "'";
                rs3 = st.executeQuery(qry3);

                while (rs3.next()) {
                    CBid = rs3.getString(1);
                }
                
                if(board !=(null)){
                    String qry1 = "select * from cab_booking where User_ID = '"+u_id+"' ";
                    ResultSet rs4 = st.executeQuery(qry1);
                    while(rs4.next()){
                    
                    amount = rs4.getString(7);
                    }
                    System.out.println(u_id);
                    ps = con.prepareStatement("insert into payment_details(user_id,card_no,card_holder_name,payment_date,Amount,Remark)values('"+ u_id+"','"+card_nmbr+"','"+holder_name+"','"+ date +"','"+amount+"','"+remark+"')");
                    ps.executeUpdate();
                    System.out.println("data inserted");
                }

        %>

        <%   } catch (Exception e) {
                out.println(e);
            }
        %>  




        <div class="card">
            <div class="card-body">
                <div class="container mb-5 mt-3">

                    <hr>
                    <div class="container">
                        <div class="col-md-12">
                            <div class="text-center">
                                <i class="fab fa-mdb fa-4x ms-0" style="color:#5d9fc5 ;"></i>
                                <h5 class="pt-0"style="color:#b48608;"><b>OT&T</b></h5>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-xl-8">
                                <ul class="list-unstyled">
                                    <li class="text-muted" style="font-weight: bold;">To: <span style="color:#b48608; font-weight: bold; font-size: 20px;"> <%= uname%> </span></li>

                                </ul>
                            </div>
                            <div class="col-xl-4">
                                <p class="text-muted">Invoice</p>
                                <ul class="list-unstyled">
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="fw-bold">Booking ID:</span><%= " " +  CBid%></li>
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="fw-bold">Boarding: </span><%= " " + Sname%></li>
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="fw-bold">Destination: </span> <%=  " " + Dname%> </li>
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="me-1 fw-bold">Status:</span><span class="badge bg-success text-black fw-bold">
                                            paid</span></li>
                                </ul>
                            </div>
                        </div>

                        <div class="row my-2 mx-1 justify-content-center">
                            <table class="table table-striped table-borderless">
                                <thead style="background-color:#84B0CA ;" class="text-white">
                                    <tr>

                                        <th scope="col">Vehicle Number</th>
                                        <th scope="col">Driver Name</th>
                                        <th scope="col">Driver Contact</th>
                                        <th scope="col">Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td><%= Cnmbr %></td>
                                        <td><%=  Driver_name %></td>
                                        <td><%=  Driver_contact %></td>
                                        <td><%= Cprice %></td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                        <div class="row">
                            <div class="col-xl-8">
                                <p class="ms-3">There is comfort. There is reassurance</p>

                            </div>
                            <div class="col-xl-3">

                                <p class="text-black float-start"><span class="text-black me-3"> Total Amount</span><span
                                        style="font-size: 25px; font-weight: bold;"><%= Cprice%></span></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-xl-10">
                                <p>Thank you for your Booking</p>
                            </div>
                            <center>
                                <div class="col-xl-2" >
                                    <button type="button" class="btn btn-primary" id="print-button"
                                            onclick="window.print()" style="background-color:#b48608 ;">Print</button>
                                </div>
                            </center>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    
</body>
</html>
