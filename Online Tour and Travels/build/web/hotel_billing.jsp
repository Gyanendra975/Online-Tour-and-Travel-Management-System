<%-- 
    Document   : billing
    Created on : Jan 31, 2024, 12:09:06 PM
    Author     : MAYANK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
    <head>
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
            String Hotel_name = request.getParameter("hotel_name");
            String umail = (String) session.getAttribute("email_key");
            String uname = (String) session.getAttribute("name_key");
            String cin = (String) session.getAttribute("indate");
            String cout = (String) session.getAttribute("outdate");
            String rtype = (String) session.getAttribute("type");
           
            
//            payment
            String amount = "";
            String u_id = (String)session.getAttribute("user_id");
            String date = (String)session.getAttribute("date");
            String remark = "Hotel Booking";
            
//            card
            String card_nmbr = request.getParameter("card_no");
            String holder_name = request.getParameter("card_holder_name");
            
            
            String Hname = "";
            String Hprice = "";
            String uid = "";
            String HBid = "";
            Connection con;
            Statement st;
            ResultSet rs;
            PreparedStatement ps;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                st = con.createStatement();
                String qry = "select * from hotel_details where Hotel_Name='" + Hotel_name + "'";
                rs = st.executeQuery(qry);
                
                while (rs.next()) {
                    Hname = rs.getString(2);
                    Hprice = rs.getString(4);
                }


                ResultSet rs2;
                String qry2 = "select * from users where Email = '" + umail + "'";
                rs2 = st.executeQuery(qry2);

                while (rs2.next()) {
                    uid = rs2.getString(1);
                }

                ps = con.prepareStatement("insert into hotel_booking(User_ID,Hotel_name,Check_In_Date,Check_Out_Date,Room_Type,price) values('" + uid + "','" + Hname + "','" + cin + "','" + cout + "','" + rtype + "','" + Hprice + "')");
                ps.executeUpdate();
                System.out.println("data inserted");

                ResultSet rs3;
                String qry3 = "select Hotel_Booking_ID from hotel_booking where User_ID = '" + uid + "' and Hotel_name = '" + Hname + "'";
                rs3 = st.executeQuery(qry3);

                while (rs3.next()) {
                    HBid = rs3.getString(1);
                }
                
                if(Hotel_name !=(null)){
                    String qry1 = "select * from hotel_booking where User_ID = '"+u_id+"' ";
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

        <%                       } catch (Exception e) {
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
                                            class="fw-bold">Booking ID:</span><%= " " + HBid%></li>
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="fw-bold">CheckIn Date: </span><%= " " + cin%></li>
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="fw-bold">CheckOut Date: </span> <%=  " " + cout%> </li>
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

                                        <th scope="col">Hotel Name</th>
                                        <th scope="col">Room Type</th>
                                        <th scope="col">Rooms</th>
                                        <th scope="col">Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td><%= Hname%></td>
                                        <td><%= rtype%></td>
                                        <td><%= 1%></td>
                                        <td><%= Hprice%></td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                        <div class="row">
                            <div class="col-xl-8">
                                <p class="ms-3">There is comfort. There is reassurance</p>

                            </div>
                            <div class="col-xl-3">

                                <p class="text-black float-start text-end"><span class="text-black me-3"> Total Amount</span><span
                                        style="font-size: 25px; font-weight: bold;"><%= Hprice%></span></p>
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
                                            onclick="window.print()" style="background-color:#b48608; ">Print</button>
                                </div>
                            </center>
                        </div>
                    </div>

                </div>
            </div>
        </div>
   
</body>
</html>




