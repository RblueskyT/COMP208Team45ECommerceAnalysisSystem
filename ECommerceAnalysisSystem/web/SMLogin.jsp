<%-- 
    Document   : SMLogin
    Created on : 2020-4-15, 13:12:27
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Manager Login</title>
        <link href='Loginstyle.css' rel='stylesheet'>
    </head>
    <body>
        <ul>    
            <li><a>System Information</a>
                <ul>
                    <li><a href='SystemIntroduction.html'>System Introduction</a></li>
                    <li><a href='Instructions.html'>Using Instructions</a></li>
                    <li><a href="index.html">Home</a></li>
                </ul>
            </li>

            <li><a title='Choose Your Identity to Login'>System Login</a>
                <ul>
                    <li><a href="SMLogin.jsp">Sales Manager</a></li>
                    <li><a href='DBALogin.jsp'>Database Administrator</a></li>
                    <li><a href='SSLogin.jsp'>Safety Specialist</a></li>
                    <li><a href='DALogin.jsp'>Data Analyst</a></li>
                </ul>
            </li>

            <li><a>Contact Us</a>
                <ul>
                    <li><a href='ContactInfo.html'>Contact Infomation</a></li>
                    <li><a href='FAQ.html'>FAQ</a></li>
                </ul>
            </li>

        </ul>
        <div class="Loginbox">
            <img src='./Image/SalesManager.png' class='LoginAvatar'>
            <h1>Sales Manager Login</h1>
            <form action="SMLoginCheck.jsp" method="post">
                <p>ManagerNo</p>
                <input type="text" name="smNo" placeholder="Enter Manager Number">
                <p>Password</p>
                <input type="password" name="smPass" placeholder="Enter Password">
                <input type="submit" value="Log In">
                <a href='FAQ.html'>Forget Your Password?</a><br>
            </form>
        </div>
</body>
</html>
