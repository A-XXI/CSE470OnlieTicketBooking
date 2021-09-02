
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Arpan Das Abir
 */
public class Logging {
    public boolean check(String email, String password)
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/470_project_db?","root","");
            String query = "SELECT email, password FROM user_info WHERE email = ? AND password = ?";
            PreparedStatement pst =  con.prepareStatement(query); 
            pst.setString(1,email);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if(rs.next() == true)
            {
                return true;
            }
            pst.close();
        } 
        catch (Exception ex)
        {
            System.out.println(ex);
        }
        return false;
    }
}
