package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.coyote.http11.Constants;
import java.sql.*;

public final class hotel_005fdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title></title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                padding: 20px;\n");
      out.write("                /*background-color: #f8f9fa;*/\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container {\n");
      out.write("                margin-top: 20px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <table class=\"table table-striped\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr style=\"background-color: #f8f9fa;\">\n");
      out.write("                        <th scope=\"col\">S.No.</th>\n");
      out.write("\n");
      out.write("                        <th scope=\"col\">Hotel Name</th>\n");
      out.write("                        <th scope=\"col\">City</th>\n");
      out.write("                        <th scope=\"col\">Price</th>\n");
      out.write("                        <th scope=\"col\">Room Availability</th>\n");
      out.write("                        <th scope=\"col\">Action</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");

                    String cty = request.getParameter("city");
                    String typ = request.getParameter("type");

                    Connection con;
                    Statement st;
                    ResultSet rs;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ot&t", "root", "Gyanu@975");
                        st = con.createStatement();
                        String qry = "select * from hotel_details";
    //                    String type

                        rs = st.executeQuery(qry);
                        String Hcity = " ";
                        String Hname = " ";
                        String Htype = " ";
                        String Hprice = " ";

                        int i = 1;

                        while (rs.next()) {

                            String city = rs.getString(3);
                            String type = (typ.equals("single")) ? rs.getString(5) : rs.getString(6);
                            String name = rs.getString(2);
                            String price = rs.getString(4);

                            if (city.equals(cty)) {

                                Hcity = city;
                                Hname = name;
                                Hprice = price;


                                session.setAttribute("name", name);
                                session.setAttribute("indate",request.getParameter("indate"));
                                session.setAttribute("outdate",request.getParameter("outdate"));
                                session.setAttribute("type",request.getParameter("type"));
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"row\">");
      out.print(i++);
      out.write("</th>\n");
      out.write("                    <td>");
      out.print( rs.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( rs.getString(3));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( rs.getString(4));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( type);
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <form action=\"payment_gateway.jsp\" method=\"post\">\n");
      out.write("                            <input type=\"hidden\" name=\"HotelName\" value=\"");
      out.print( rs.getString(2));
      out.write("\">\n");
      out.write("                            <button  type=\"submit\" class=\"btn btn-primary\" name=\"hd\" onclick=\"booknow()\">Book Now</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");

                            }

                        }

                    } catch (Exception e) {
                    }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src='static/js/functions.js'></script>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
