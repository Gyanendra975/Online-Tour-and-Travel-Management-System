/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet("admin")
public class admin extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String uname=request.getParameter("u_email");
        String psw=request.getParameter("u_psw");
        PrintWriter out = response.getWriter();
        HttpSession session= request.getSession();
        try  {
        
            if (uname.equals("admin@gmail.com")){
                if(psw.equals( "1234")){
                    session.getAttribute(uname);
                     String index="/adminDashBoard.jsp";
                    RequestDispatcher  dispatcher =getServletContext().getRequestDispatcher(index);
                    dispatcher.forward(request,response);
                }
                else{
                    out.println("<h2>Email or password wrong </h2>");
                    String login="/login.html";
                    RequestDispatcher dis=getServletContext().getRequestDispatcher(login);
                    dis.forward(request, response);
                }
              
            
        }  else{
                        out.println("User is not admin");
             }
            
            String login="/index.html";
            RequestDispatcher  dispatcher =getServletContext().getRequestDispatcher(login);
            dispatcher.forward(request,response);
        }
        catch(Exception e){
            out.println("Exception : "+e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
