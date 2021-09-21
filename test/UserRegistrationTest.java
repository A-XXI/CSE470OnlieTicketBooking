/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import static org.mockito.Mockito.when;
import org.mockito.MockitoAnnotations;

/**
 *
 * @author Arpan Das Abir
 */
public class UserRegistrationTest {
    
    @Mock
    HttpServletRequest request;

    @Mock
    HttpServletResponse response;

    @Before
    public void setUp() throws Exception {
            MockitoAnnotations.openMocks(this);
    }
    
    @Test
    public void UserRegistrationTest() throws IOException, ServletException{
        
        when(request.getParameter("name")).thenReturn("Arpan");
        when(request.getParameter("email")).thenReturn("arpandas21@gmail.com");
        when(request.getParameter("phone")).thenReturn("01976699963");
        when(request.getParameter("address")).thenReturn("arpandas21@gmail.com");
        when(request.getParameter("password")).thenReturn("dhaka");

        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);

        when(response.getWriter()).thenReturn(pw);
        UserRegistration registration =new UserRegistration();
        registration.doPost(request, response);
        String result = sw.getBuffer().toString().trim();
        assertEquals(result, "home_profile.jsp");
    }
    
    


}
