/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
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
        //fetching the data from the UserRegistrationForm.jsp
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        
        //sending the data to the RegisterDAO class to insert into the database
        Registering rDao = new Registering();
        if(rDao.userRegister(name,email,phone,address,password) == true){
            HttpSession session = request.getSession();//creating a session
            session.setAttribute("email", email);
            response.sendRedirect("home_profile.jsp");
        }
        else{
            response.sendRedirect("FAQ.jsp");
        }
        
    }

}
