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

@WebServlet("DeleteCab")
public class DeleteCab extends HttpServlet {

   
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Connection con;
        PreparedStatement st;
        ResultSet rs;
        String id=request.getParameter("id");
        int i=Integer.parseInt(id);
        try  {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
            String qry = "delete from cab_details where cab_id='"+i +"'";
            st = con.prepareStatement(qry);
           
            st.executeUpdate();
            st.close();
            response.sendRedirect("adminDashBoard.jsp");
           
           
        }catch(Exception e){
            out.print(e);
            out.println(i);
        }
    }

}
