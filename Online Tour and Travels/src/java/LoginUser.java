
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

@WebServlet("LoginUser")
public class LoginUser extends HttpServlet {

   
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        
        String uname=request.getParameter("u_email");
        String psw=request.getParameter("u_psw");
        Connection con;
        Statement st;
        ResultSet rs;
        out.println(uname);
        
        try  {
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t","root","Gyanu@975");
         st=con.createStatement();
         rs=st.executeQuery("select * from users");
         boolean status=false;
         String u_email="";
         String u_name="";
         String u_id = "";
         while(rs.next()){
              String user_id = rs.getString(1);
             String user_mail=rs.getString(4);
             String user_name = rs.getString(2);
             if(user_mail.equals(uname)){
                 status=true;
                 u_email=user_mail;
                 u_name = user_name;
                 u_id   = user_id;
                 out.println(uname);
                 System.out.println(u_id);
                 break;
             }
             else{
                 status=false;
             }
         }
         if(status==true){
             
            HttpSession session =request.getSession();
             session.setAttribute("name_key", u_name);
             session.setAttribute("email_key", u_email);
             session.setAttribute("user_id",u_id);
             RequestDispatcher rd = request.getRequestDispatcher("/UserIndex.jsp");
             rd.forward(request,response);
             
             if(uname.equals(u_email)){
                 response.sendRedirect("UserIndex.jsp");
             }
         }
         else{
             response.getWriter().write("<script>alert('Invalid Username'); window.location.href='login.html';</script>"); 
         }
         
            
        }catch(Exception e){
            
        }
        
    }

  
}
