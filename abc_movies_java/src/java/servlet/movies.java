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
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dulan
 */
@WebServlet(name = "movies", urlPatterns = {"/movies"})
public class movies extends HttpServlet {

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
            out.println("<title>Servlet movies</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet movies at " + request.getContextPath() + "</h1>");
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
          String mname = request.getParameter("name");
        String mcat = request.getParameter("category");
        String mprice = request.getParameter("price");
        String mticket = request.getParameter("tickets");
 PrintWriter out = response.getWriter();

 Connection con = null; //created a connection instance. con is the object name.
 Statement st = null; //another instance of a statement class

 try
 {

      Class.forName("com.mysql.jdbc.Driver");

     con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_movies","root","");
 st=con.createStatement();

 String qry = "insert into tbl_movies values ('"+mname+"','"+mcat+"','"+mticket+"','"+mprice+"')";

 st.execute(qry);

 request.setAttribute("error","<script>swal(\"Well done!\", \"movie add sucess!\", \"success\");</script>");
  RequestDispatcher rd = request.getRequestDispatcher("addmovies.jsp");
          rd.include(request, response);
 }
 catch(Exception e)
 {
 request.setAttribute("error","<script>swal(\"Error!\", \"Someting went wrong!\", \"error\");</script>");
  RequestDispatcher rd = request.getRequestDispatcher("addmovies.jsp");
          rd.include(request, response);
 
 }
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
