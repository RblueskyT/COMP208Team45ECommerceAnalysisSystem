<%-- 
    Document   : DBALogin
    Created on : 2020-4-15, 13:12:49
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database Admin Login</title>
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
            <img src='./Image/DatabaseAdministrator.png' class='LoginAvatar'>
            <h1>Database Admin Login</h1>
            <form action="DBALoginCheck.jsp" method="post">
                <p>AdminNo</p>
                <input type="text" name="adminNo" placeholder="Enter Admin Number">
                <p>Password</p>
                <input type="password" name="adminPass" placeholder="Enter Password">
                <input type="submit" value="Log In">
                <a href='FAQ.html'>Forget Your Password?</a><br>
            </form>
        </div>
</body>
</html>
