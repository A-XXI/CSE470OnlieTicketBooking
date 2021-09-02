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
import java.sql.SQLException;
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
@WebServlet(urlPatterns = {"/Coach_info"})
public class Seat extends HttpServlet {
    
    String number=null;
    String quantity=null;
    public void check(String num, String quan){
        number=num;
        quantity=quan;
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
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/470_project_db?","root","");
            String query = "SELECT seats FROM bus_time WHERE serial = ? ";
            PreparedStatement pst =  con.prepareStatement(query);
            pst.setString(1, number);
            ResultSet rs = pst.executeQuery();

            
                String seats = rs.getString(1);
                int seats_int=Integer.parseInt(seats); 
                int quantity_int=Integer.parseInt(quantity); 
                int seat_update = seats_int - quantity_int;
                String new_seat=String.valueOf(seat_update);
                
                Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/470_project_db?","root","");
            
                String query1 = "UPDATE bus_time SET seats = ? WHERE serial = ?";
                PreparedStatement pst1 =  con1.prepareStatement(query1);
                pst1.setString(1, new_seat);
                pst1.setString(1, number);
                
                
//                HttpSession session = request.getSession();//creating a session
//                session.setAttribute("name", name);
//                session.setAttribute("number", ticket_info);
//                session.setAttribute("quantity", seat_quantity);
//                response.sendRedirect("Booking_profile.jsp");
               pst.close();
               con.close();
               pst1.close();
               con1.close();
            
        } 
        catch ( ClassNotFoundException | SQLException ex) 
        {
            System.out.println(ex);
        }
    }

}
