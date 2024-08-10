/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;


/**
 *
 * @author Deelaka
 */
public class user extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet user</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet user at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
           String username = request.getParameter("txtemail");
        String password = request.getParameter("txtpass");
       
 PrintWriter out = response.getWriter();

 Connection con = null; //created a connection instance. con is the object name.
 Statement st = null; //another instance of a statement class

 try
 {

      Class.forName("com.mysql.jdbc.Driver");

     con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_movies","root","");
 st=con.createStatement();

 String qry = "SELECT * FROM `tbl_user` WHERE user_email = '"+username+"' AND user_pwd = '"+password+"'";


 st.execute(qry);
ResultSet rs = st.executeQuery(qry);

   if (rs.next())

    {

        //successful else
       // response.sendRedirect("admin_dashboard.jsp");
  
          RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
          rd.include(request, response);
         
     

       

    } else {

        // error message
           request.setAttribute("error","<script>swal(\"Error!\", \"Invalid Login Details!\", \"error\");</script>");
          RequestDispatcher rd = request.getRequestDispatcher("user.jsp");
          rd.include(request, response);
           
         
         

    }


 }
 catch(Exception e)
 {
 request.setAttribute("error","<script>swal(\"Error!\", \"Invalid Login Details!\", \"error\");</script>");
          RequestDispatcher rd = request.getRequestDispatcher("user.jsp");
          rd.include(request, response);
 
 };
        
    
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
           String Name = request.getParameter("txtname");
        String email = request.getParameter("txtemail");
        String phone = request.getParameter("txtphone");
        String pass = request.getParameter("txtpass");
 PrintWriter out = response.getWriter();

 Connection con = null; //created a connection instance. con is the object name.
 Statement st = null; //another instance of a statement class

 try
 {

      Class.forName("com.mysql.jdbc.Driver");

     con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_movies","root","");
 st=con.createStatement();

 String qry = "insert into tbl_user values ('"+Name+"','"+email+"','"+phone+"','"+pass+"')";

 st.execute(qry);

 request.setAttribute("error","<script>swal(\"Well done!\", \"your account has been successfully created!\", \"success\");</script>");
  RequestDispatcher rd = request.getRequestDispatcher("user.jsp");
          rd.include(request, response);
 }
 catch(Exception e)
 {
 request.setAttribute("error","<script>swal(\"Error!\", \"Someting went wrong!\", \"error\");</script>");
  RequestDispatcher rd = request.getRequestDispatcher("user.jsp");
          rd.include(request, response);
 
 }
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
