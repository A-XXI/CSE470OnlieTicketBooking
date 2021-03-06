

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

try {
    Class.forName("com.mysql.jdbc.Driver");
    } 
    catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
        <link href="Design.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <div class="p-3 mb-2 bg-dark text-white">
            <div class="topnav">
                <a class="active" href="home_profile.jsp">Home</a>
                <a href="Schedule_profile.jsp">Schedule</a>
                <a href="About_profile.jsp">About Us</a>
                <a href="Contact_profile.jsp">Contact</a>
                <a href="FAQ_profile.jsp">FAQ</a>

                <div class="login-container">
                    <%
                        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Http 1.1
                        response.setHeader("Pragma", "no-cache");//Http 1.0
                        response.setHeader("Expires", "0");//Proxies
                        if (session.getAttribute("email") == null) {
                            response.sendRedirect("home.jsp");
                        }
                    %>
                    <div><p class="text-primary font-weight-bold" >Hello ${email}  </p></div>
                    <div>
                        <form action="LogOut" mothod="POST">
                            <input class="text-danger" type = "submit" value = "Logout">
                        </form>
                    </div>
                </div>            
            </div>    
        </div>
        
        <div class="card-body">
                <p class="p-3 mb-2 bg-success text-dark">For booking ticket please log in to Your Account, at top right of the page</p>
                <p class="p-3 mb-2 bg-secondary text-dark">** you can not purchase more than 4 tickets,if you need more <a href="Contact.jsp">Contact</a> with us</p>
                
        </div>
        
        <h2 align="center"><font><strong>Schedules</strong></font></h2>
        <table align="center" cellpadding="10" cellspacing="10" border="2">
            
            <tr bgcolor="#00FFFF">
                <td><b>serial</b></td>
                <td><b>start_point</b></td>
                <td><b>destination</b></td>
                <td><b>date</b></td>
                <td><b>time</b></td>
                <td><b>seats</b></td>
                <td><b>....</b></td>
            </tr>
            <%
                try{ 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/470_project_db?","root","");
                String query = "SELECT * FROM bus_time";
                PreparedStatement pst =  con.prepareStatement(query); 

                ResultSet rs = pst.executeQuery();

                while(rs.next()){
            %>
            
            <tr bgcolor="#DEB887">
                <td><%=rs.getString("serial") %></td>
                <td><%=rs.getString("start_point") %></td>
                <td><%=rs.getString("destination") %></td>
                <td><%=rs.getString("date") %></td>
                <td><%=rs.getString("time") %></td>
                <td><%=rs.getString("seats") %></td>
                <td><a href="Booking_profile.jsp" class="btn btn-success">click here for booking</a></td>
            </tr>

            <% 
                }

                } 
                catch (Exception e) {
                    e.printStackTrace();
                }
            %>  
        </table>
        
        <div class="footer-basic">
        <footer>
            <div class="social">
                <a href="#"><i class="icon ion-social-instagram"></i></a>
                <a href="#"><i class="icon ion-social-twitter"></i></a>
                <a href="#"><i class="icon ion-social-facebook"></i></a>
            </div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="home_profile.jsp">Home</a></li>
                <li class="list-inline-item"><a href="About_profile.jsp">About</a></li>
                <li class="list-inline-item"><a href="Contact_profile.jsp">Contact</a></li>
                <li class="list-inline-item"><a href="FAQ_profile.jsp">FAQ</a></li>
            </ul>
            <p class="copyright">Company Name ?? 2021</p>
        </footer>
    </div>
    </body>
</html>

