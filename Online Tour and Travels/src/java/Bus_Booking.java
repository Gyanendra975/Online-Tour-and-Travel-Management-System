///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
////@WebServlet("Bus_Booking")
//public class Bus_Booking extends HttpServlet {
//
//   
//   // protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		//response.getWriter().append("Served at: ").append(request.getContextPath());
//  //  }
//      
//    protected void service(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        HttpSession session =request.getSession();
//        
//        String dt=request.getParameter("date");
//        String fcity=request.getParameter("FromCity");
//        String tcity=request.getParameter("ToCity");
//        
//        Connection con;
//        Statement st;
//        ResultSet rs;
//    
//        try{
//           Class.forName("com.mysql.jdbc.Driver");
//         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t","root","Gyanu@975");
//         st=con.createStatement();
//         rs=st.executeQuery("select * from bus_deatails"); 
//          boolean status=false;
//          
//          String date = "";
//          String tocity = "";
//          String fromcity = "";
//          System.out.println(tocity);
//            System.out.println(date);
//              System.out.println(fromcity);
//              
//          while(rs.next()){
//              String b_date = rs.getString(6);
//              String f_city = rs.getString(3);
//              String t_city = rs.getString(4);
//              String bus_name = rs.getString(2);
//              if(b_date.equals(dt) && f_city.equals(fcity) && t_city.equals(tcity)){
//                  
//                  status = true;
//                  date = b_date;
//                  tocity = t_city;
//                  fromcity = f_city;
//                 
//                 out.println(fromcity + " " + tocity + " " + date + " " + bus_name + "<br>");
//                 
//                 
//              }
//              else{
//                  status = false;
//              }
//                if(status==true){
//                     session.getAttribute(date);
//                    if(f_city.equals(fcity) && t_city.equals(tcity)){
////                        response.sendRedirect("index.html");
//                
//                        
//                        
//             }
//         }
//                  
//              }
//                  
//        }
//        catch(Exception e){
//            
//        }
//            
//        }
//    
//    }
//
//
//
//
//    
