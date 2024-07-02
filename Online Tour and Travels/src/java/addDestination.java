 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author Admin
 */
@WebServlet("addDestination")
public class addDestination extends HttpServlet {

   
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //add pacge servlet add data to database 
        
        
        String p_name=request.getParameter("package_name");
        String p_desc=request.getParameter("package_desc");
        String p_amount=request.getParameter("package_amount");
        String p_duration=request.getParameter("package_duration");
        String s_add=request.getParameter("package_start_addres");
        String e_add=request.getParameter("package_end_addres");
        Connection con;
        PreparedStatement ps;
        
        
        PrintWriter out = response.getWriter();
        try  {
        
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t","root","Gyanu@975");
            ps=con.prepareStatement("insert into packages(Package_Name,Description,Price,Duration,Start_Location,End_Location) values('"+p_name+"','"+p_desc+"','"+p_amount+"','"+p_duration+"','"+s_add+"','"+e_add+"')");
            ps.executeUpdate();
            ps.close();
            response.sendRedirect("adminDashboard.html");
        }
        catch (IOException | ClassNotFoundException | SQLException e){
            out.println("Exception "+ e);
        }
    }

  
}
