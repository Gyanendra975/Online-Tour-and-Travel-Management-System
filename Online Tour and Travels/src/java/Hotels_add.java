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
@WebServlet("Hotels_add")
public class Hotels_add extends HttpServlet {

   
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //add pacge servlet add data to database 
        
        
        String H_name=request.getParameter("Hname");
        String loc=request.getParameter("loc");
        String price=request.getParameter("price");
        String single=request.getParameter("single");
        String Double=request.getParameter("double");
        
        Connection con;
        PreparedStatement ps;
        
        
        PrintWriter out = response.getWriter();
        try  {
        
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t","root","Gyanu@975");
            ps=con.prepareStatement("insert into hotel_details(Hotel_Name,City,Price,Single_Rooms,Double_Rooms) values('"+H_name+"','"+loc+"','"+price+"','"+single+"','"+Double+"')");
            ps.executeUpdate();
            ps.close();
            response.getWriter().write("<script>alert('Data Inserted successful!'); window.location.href='adminDashboard.html';</script>");                    

        }
        catch (IOException | ClassNotFoundException | SQLException e){
            out.println("Exception "+ e);
        }
    }

  
}
