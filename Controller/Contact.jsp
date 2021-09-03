

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
                <a class="active" href="home.jsp">Home</a>
                <a href="Schedule.jsp">Schedule</a>
                <a href="About.jsp">About Us</a>
                <a href="Contact.jsp">Contact</a>
                <a href="FAQ.jsp">FAQ</a>

                <div class="login-container">
                    <form action="LogIn" method="post">
                        <input type="text" placeholder="Email" name="email">
                        <input type="text" placeholder="Password" name="psw">
                        <button  type="submit">Login</button>
                    </form>
                    <a href="RegistrationForm.jsp"><b class="text-primary">SIGN IN here</b></a> <div class="position-relative"><p class="text-dark" > if you don't have account</p></div>
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
                    <li class="list-inline-item"><a href="home.jsp">Home</a></li>
                    <li class="list-inline-item"><a href="About.jsp">About</a></li>
                    <li class="list-inline-item"><a href="Contact.jsp">Contact</a></li>
                    <li class="list-inline-item"><a href="FAQ.jsp">FAQ</a></li>
                </ul>
                <p class="copyright">Company Name © 2021</p>
            </footer>
        </div>
    </body>
</html>
