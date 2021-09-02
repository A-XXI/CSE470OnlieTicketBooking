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
@WebServlet("/Booking")
public class Booking extends HttpServlet {

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
        String number = request.getParameter("number");
        String quantity = request.getParameter("quantity");
        String email = request.getParameter("email");
        String pass = request.getParameter("psw");
        
        

        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/470_project_db?","root","");
            
            String query = "UPDATE user_info SET ticket_info = ?,seat_quantity = ? WHERE email = ?";
            PreparedStatement pst =  con.prepareStatement(query);
            pst.setString(1, number);
            pst.setString(2, quantity);
            pst.setString(3, email);
            
            Seat st=new Seat();
            st.check(number, quantity);
                        
            if (pst.executeUpdate() > 0) 
            {
                HttpSession session = request.getSession();//creating a session
                session.setAttribute("email", email);
                session.setAttribute("number", number);
                session.setAttribute("quantity", quantity);
                response.sendRedirect("Booking_profile.jsp");
            }else{
                response.sendRedirect("home_profile.jsp");
            }
            
            pst.close();
            con.close();
        } 
        catch (IOException | ClassNotFoundException | SQLException ex) 
        {
            System.out.println(ex);
        }
    }

}
