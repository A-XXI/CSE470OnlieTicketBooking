/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Arpan Das Abir
 */
@WebServlet(urlPatterns = {"/Ticket_status"})
public class Ticket_status extends HttpServlet {

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
        String name = request.getParameter("name");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/470_project_db?","root","");
            
            String query="SELECT ticket_info, seat_quantity FROM user_info WHERE name = ? ";
            PreparedStatement pst =  con.prepareStatement(query);
            pst.setString(1, name);
            ResultSet rs=pst.executeQuery();
            
            if(rs.next() == true)
            {
                String ticket_info = rs.getString(1);
                String seat_quantity = rs.getString(2);
                HttpSession session = request.getSession();//creating a session
                session.setAttribute("name", name);
                session.setAttribute("number", ticket_info);
                session.setAttribute("quantity", seat_quantity);
                response.sendRedirect("Booking_profile.jsp");
            }
            pst.close();
            con.close();
            
        }catch (Exception ex) 
        {
            System.out.println(ex);
        }
    }

}
