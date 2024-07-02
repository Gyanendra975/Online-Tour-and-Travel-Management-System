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
@WebServlet("Cabs_add")
public class Cabs_add extends HttpServlet {

   
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //add pacge servlet add data to database 
        
        
        String V_name = request.getParameter("vname");
        String V_nmbr = request.getParameter("vnumber");
        String O_name = request.getParameter("oname");
        String O_contact =request.getParameter("ocontact");
        String D_name=request.getParameter("dname");
        String D_contact=request.getParameter("dcontact");
        String S_loc=request.getParameter("sloc");
        String D_loc=request.getParameter("dloc");
        String Price=request.getParameter("price");
        
        Connection con;
        PreparedStatement ps;
 
        PrintWriter out = response.getWriter();
        try  {
        
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t","root","Gyanu@975");
                ps=con.prepareStatement("insert into cab_details(vehicle_name,vehicle_No,owner_name,owner_contact,driver_name,driver_contact,source_location,destination,price) values('"+V_name+"','"+V_nmbr+"','"+O_name+"','"+O_contact+"','"+D_name+"','"+D_contact+"','"+S_loc+"','"+D_loc+"','"+Price+"')");
                ps.executeUpdate();
                ps.close();
                response.getWriter().write("<script>alert('Data Inserted successful!'); window.location.href='adminDashboard.html';</script>");                    

        }
        catch (IOException | ClassNotFoundException | SQLException e){
            out.println("Exception "+ e);
        }
    }

  
}
