<%-- 
    Document   : Contact_profile
    Created on : Aug 31, 2021, 10:49:43 AM
    Author     : Arpan Das Abir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
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
                  <h1><b>Contacts</b></h1>
                </div>
                <div class="card-body">
                  <h2 class="card-title text-primary">E-mail</h5>
                  <p class="card-text"> kal@gmail.com <p>
                  <h2 class="card-title text-primary">Phone Number</h5>
                  <p class="card-text"> 01976699963 <p>
                  <p class="card-text"> 01919087637 <p>

                </div>
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
