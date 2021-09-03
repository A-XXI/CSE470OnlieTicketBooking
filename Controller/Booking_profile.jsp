


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
        <title>Booking</title>
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
                    
                    
        <div class="p-3 mb-2 bg-info text-dark">
            <div class="card text-center">
                <div class="card-header">
                  <h1><b>BOOKING</b></h1>
                </div>
                <div class="card-body">
                    <form action="Booking" method="post">
                        <p>Enter your desired Coach serial number & number tickets </p>
                        <input type="text" placeholder="Coach Number" name="number">
                        <input type="text" placeholder="Quantity(1-4)" name="quantity">
                        <p>Enter Email and password for confirmation</p>
                        <input type="text" placeholder="Email" name="email" >
                        <input type="text" placeholder="Password" name="psw">
                        <button  type="submit">Add to cart</button>
                        <% if (session.getAttribute("number") == null ) { %>
                            
                        <%  } %>
                    </form>

                </div>
            </div>
        </div>
        
        <div class="p-3 mb-2 bg-info text-dark">
            <div class="card text-center">
                <div class="card-header">
                  <h1><b>Your Booking Status</b></h1>
                </div>
                
                    <% if (session.getAttribute("number") == null ) { %>
                        <form action="Ticket_status" method="post">
                            <p>Enter Your name to see the ORDER and Delivery status</p>
                            <input type="text" placeholder="Name" name="name" >
                            <button  type="submit">GO...</button>
                            <% if (session.getAttribute("number") == null && session.getAttribute("name") == null  ) { %>

                            <%  }else{ %>
                                <div><p class="text-primary font-weight-bold" >You didn't booked yet</p></div>
                            <%  } %>
                        </form>
                    <%  }else{ %>
                        <div><p class="text-primary font-weight-bold" >Hello ${email}  </p></div>
                        <div><p class="text-primary font-weight-bold" >Your coach is ${number}  </p></div>
                        <div><p class="text-primary font-weight-bold" >You purchased ${quantity} tickets </p></div>
                        <div><p class="text-primary font-weight-bold" >Thank You for choosing us :D  </p></div>
                        <div><p class="text-primary font-weight-bold" >We will contact with you for the payment procedure</p></div>
                        <div><p class="text-warning font-weight-bold" ></p></div>
                            
                            
                            
                    <%  } %>         
            </div>
        </div>
                    
        
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
            <p class="copyright">Company Name © 2021</p>
        </footer>
    </div>
    </body>
</html>
