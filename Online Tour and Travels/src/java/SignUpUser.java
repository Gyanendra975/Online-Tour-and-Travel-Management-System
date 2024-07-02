import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

@WebServlet("SignUpUser")
public class SignUpUser extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String fname=request.getParameter("fname");
        String uname=request.getParameter("uname");
        String num=request.getParameter("num");
        String email=request.getParameter("email");
        String psw=request.getParameter("psw");
        String cpsw=request.getParameter("cpsw");
        
        Connection con;
        PreparedStatement ps;
        Statement st;
        ResultSet rs;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t","root","Gyanu@975");
           
//             ps=con.prepareStatement("insert into users(fullname,username,email,psw,mob_num) values('"+fname+"','"+uname+"','"+email+"','"+psw+"','"+num+"' )");
//             ps.executeUpdate();
//             ps.close();
//             out.println("ragistration sucess !! ");
            
            st=con.createStatement();
            rs=st.executeQuery("select * from users");
            boolean status=false;
            while(rs.next()){
                 String em=rs.getString(4);
                            
                if(em.equals(email)){
                     status=true;
                     break;
                }else{
                    status=false;
                }
                
            }
            if(status==false){
                if(psw.equals(cpsw)){
                    ps=con.prepareStatement("insert into users(username,password,email,full_name,phone_Number) values('"+fname+"','"+uname+"','"+email+"','"+psw+"','"+num+"' )");
                   ps.executeUpdate();
                    ps.close();
                    response.getWriter().write("<script>alert('Registration successful!'); window.location.href='login.html';</script>");                    

                }
                else{
                     response.getWriter().write("<script>alert('Sorry! Password is not same!'); window.location.href='signup.html';</script>");
                }
                
            }else{
                 response.getWriter().write("<script>alert('User already exist!'); window.location.href='signup.html';</script>");
            }
            
            
            
        } catch (Exception ex) {
          out.println("Errorrrrrrrrrrrr"+ex);
        }
       
      
    }

}
