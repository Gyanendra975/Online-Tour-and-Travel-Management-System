<%-- 
    Document   : payment_gateway
    Created on : Feb 5, 2024, 3:25:02 PM
    Author     : MAYANK
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.coyote.http11.Constants"%>
<%@page import="java.text.SimpleDateFormat" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Beautiful Payment Gateway</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            .padding{

                padding: 5rem !important;
            }



            .form-control:focus {
                box-shadow: 10px 0px 0px 0px #ffffff !important;
                border-color: #4ca746;
            }
        </style>
    </head>
    <body>

        <%
            
            
//            cabs
            String source = request.getParameter("src");
            String destination = request.getParameter("dest");
            String BBid = (String)session.getAttribute("bus_bkg_id");
           
            
//            bus
            String from_city = request.getParameter("fromcity");
            String to_city = request.getParameter("tocity");
            System.out.println(from_city);

            
            
//            hotels
            String H_name = "";
            String Hotel_name = request.getParameter("HotelName");
            String typ = request.getParameter("type");
            String u_id = (String)session.getAttribute("user_id");
            String hotel_details = request.getParameter("hd");
            
            
//            card
//            SimpleDateFormat df = new SimpleDateFormat("dd/mm/yyyy");
//            System.out.println(df
               Date currentDate = new Date();
               DateFormat dateformat = DateFormat.getInstance();
               String dt = dateformat.format(currentDate);
               System.out.println(dt);
               session.setAttribute("date",dt);
           
            Connection con;
            Statement st;
            ResultSet rs;
            PreparedStatement ps;
            
            
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                st = con.createStatement();
                String qry = "select * from hotel_details";
                rs = st.executeQuery(qry);

                while (rs.next()) {
                    H_name  = rs.getString(2);
                }
                
                
 
                
                
                
        %>
        
                 <%                    
                                        } catch (Exception e) {
            }


%>



                    
        
            <div class="padding">
                <div class="row">
                    <div class="container-fluid d-flex justify-content-center">
                        <div class="col-sm-8 col-md-6">
                            <div class="card">
                                <div class="card-header">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <span>CREDIT/DEBIT CARD PAYMENT</span>

                                        </div>

                                        <div class="col-md-6 text-right" style="margin-top: -5px;">

                                            <img src="https://img.icons8.com/color/36/000000/visa.png">
                                            <img src="https://img.icons8.com/color/36/000000/mastercard.png">
                                            <img src="https://img.icons8.com/color/36/000000/amex.png">

                                        </div>      

                                    </div>    

                                </div>
                                <div class="card-body" style="height: 350px">
                                <form action=" <%= (Hotel_name != null && !Hotel_name.isEmpty()) ? "hotel_billing.jsp" : 
                                        (source != null && destination != null) ? "cab_billing.jsp" : 
                                         (from_city != null && to_city != null)? "bus_billing.jsp" : "" %>" 
                                         method="post">

                                    <input type="hidden" name="hotel_name" value="<%= Hotel_name %>"> 
                                        <input type="hidden" name="src" value="<%= source%>">
                                        <input type="hidden" name="dest" value="<%= destination %>">
                                        <input type="hidden" name="from_city" value="<%= from_city %>">
                                        <input type="hidden" name="to_city" value="<%= to_city%>">
                                         

                                
                                    <div class="form-group">
                                        <label for="cc-number" class="control-label">CARD NUMBER</label>
                                        <input id="cc-number" type="tel" class="input-lg form-control cc-number" autocomplete="cc-number" placeholder="&bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull;" name="card_no" required>
                                    </div>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="cc-exp" class="control-label">CARD EXPIRY</label>
                                                <input id="cc-exp" type="tel" class="input-lg form-control cc-exp" autocomplete="cc-exp" placeholder="&bull;&bull; / &bull;&bull;" required>
                                            </div>


                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="cc-cvc" class="control-label">CARD CVC</label>
                                                <input id="cc-cvc" type="tel" class="input-lg form-control cc-cvc" autocomplete="off" placeholder="&bull;&bull;&bull;&bull;" required>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="form-group">
                                        <label for="numeric" class="control-label">CARD HOLDER NAME</label>
                                        <input  type="text" class="input-lg form-control" name="card_holder_name">
                                    </div>

                                    <div class="form-group">

                                        <button  value="MAKE PAYMENT"  class="btn btn-success btn-lg form-control" style="font-size: .8rem;">Paynow</button>
                                    </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/3.0.0/jquery.payment.min.js"></script>
    </body>
</html>
