/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;
import org.mockito.Mock;
import static org.mockito.Mockito.when;
import org.mockito.MockitoAnnotations;

/**
 *
 * @author Arpan Das Abir
 */
public class Ticket_statusTest {
    
    @Mock
    HttpServletRequest request;

    @Mock
    HttpServletResponse response;

    @Before
    public void setUp() throws Exception {
            MockitoAnnotations.openMocks(this);
    }

    @Test
    public void Ticket_statusTest() throws IOException, ServletException {
        
        when(request.getParameter("name")).thenReturn("Arpan");
        
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);

        when(response.getWriter()).thenReturn(pw);
        
        Ticket_status status =new Ticket_status();
        status.doPost(request, response);
        String result = sw.getBuffer().toString().trim();
        assertEquals(result, "Booking_profile.jsp");
        
    }
    
}
