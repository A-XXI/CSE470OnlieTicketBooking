

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
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
              <h1><b>About us</b></h1>
            </div>
            <div class="card-body">
              <h2 class="card-title">Our main goal is providing you safe & comfortable journey</h2>
              <p class="card-text">We will give you fast,safe and comfortable bus journey ever.</p>
              <p class="card-text">We have very large leg space in between seats.You can spend 12 hours without any discomfort in our seats </p>
              <p class="card-text">All of our buses are equipped with GPS and Camera for safety of the valued passenger.</p>
              
              <a href="Contact_profile.jsp" class="btn btn-primary">If you have more query click here to get contact</a>
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

