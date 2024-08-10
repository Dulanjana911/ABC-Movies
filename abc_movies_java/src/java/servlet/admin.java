/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Deelaka
 */
public class admin extends HttpServlet {

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
            String username = request.getParameter("txtadmin");
        String password = request.getParameter("txtpass");
       
 PrintWriter out = response.getWriter();

 Connection con = null; //created a connection instance. con is the object name.
 Statement st = null; //another instance of a statement class

 try
 {

      Class.forName("com.mysql.jdbc.Driver");

     con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_movies","root","");
 st=con.createStatement();

 String qry = "SELECT * FROM `tbl_admin` WHERE user_name = '"+username+"' AND user_pwd = '"+password+"'";


 st.execute(qry);
ResultSet rs = st.executeQuery(qry);

   if (rs.next())

    {

        //successful else
        response.sendRedirect("admin_dashboard.jsp");

         
     

       

    } else {

        // error message
           request.setAttribute("error","<script>swal(\"Error!\", \"Invalid Login Details!\", \"error\");</script>");
          RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
          rd.include(request, response);
           
         
         

    }


 }
 catch(Exception e)
 {
 out.print("<script>alert('Sorry Try Again!')</script>");
 
 };
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
