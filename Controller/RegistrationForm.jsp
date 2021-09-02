<%-- 
    Document   : RegistrationForm
    Created on : Aug 30, 2021, 8:34:20 PM
    Author     : Arpan Das Abir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
        <link href="RegForm.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class = "container">
            <h3>User Registration Form</h3>
            <form name="Register" action="UserRegistration" method="POST">
                <table border="0">
                    <tbody>
                        <tr>
                            <td>Name: </td>
                            <td><input type="text" name="name" value="" size="50" class = "userInput" /></td>
                        </tr>

                        <tr>
                            <td>Email : </td>
                            <td><input type="text" name="email" value="" size="50" class = "userInput" /></td>
                        </tr>
                        
                        <tr>
                            <td>Phone No : </td>
                            <td><input type="text" name="phone" value="" class = "userInput" /></td>
                        </tr>
                        
                        <tr>
                            <td>Address : </td>
                            <td><input type="text" name="address" value="" size="50" class = "userInput" /></td>
                        </tr>
                        
                        <tr>
                            <td>Password : </td>
                            <td><input type="password" name="password" value="" size="50" class = "userInput" /></td>
                        </tr>
                        
                    </tbody>
                </table>
                <input type="submit" value="Submit" name="submit" class ="registerbtn" />
            </form>
        </div>
    </body>
</html>

