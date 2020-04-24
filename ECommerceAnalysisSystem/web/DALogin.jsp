<%-- 
    Document   : DALogin
    Created on : 2020-4-15, 13:13:29
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Analyst Login</title>
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
            <img src='./Image/DataAnalyst.png' class='LoginAvatar'>
            <h1>Data Analyst Login</h1>
            <form action="DALoginCheck.jsp" method="post">
                <p>AnalystNo</p>
                <input type="text" name="analystNo" placeholder="Enter Analyst Number">
                <p>Password</p>
                <input type="password" name="analystPass" placeholder="Enter Password">
                <input type="submit" value="Log In">
                <a href='FAQ.html'>Forget Your Password?</a><br>
            </form>
        </div>
</body>
</html>
