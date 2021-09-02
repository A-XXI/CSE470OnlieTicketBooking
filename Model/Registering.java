/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Arpan Das Abir
 */
public class Registering {
    public boolean userRegister(String name,String email,String phone,String address,String password) 
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/470_project_db?","root","");
            
            String query = "INSERT INTO user_info (name,email,phone,address,password) VALUES (?,?,?,?,?)";
            PreparedStatement pst =  con.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, phone);
            pst.setString(4, address);
            pst.setString(5, password);
            
            //pst.executeUpdate();
            if (pst.executeUpdate() > 0) 
            {
                return true;
            }
            pst.close();
            con.close();
        }
        catch (Exception ex) 
        {
            System.out.println(ex);
        }
        return false;
    }
    
}
