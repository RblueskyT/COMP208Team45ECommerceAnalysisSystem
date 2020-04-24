<%-- 
    Document   : SMLoginFailed
    Created on : 2020-4-17, 19:55:34
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SM Login Failed</title>
        <link href='Informationstyle.css' rel='stylesheet'>
    </head>
    <body>
        <div class='Messagebox'>
        <h1>Warning: Invalid Manager Number or Password!</h1>
        <h2>Please wait for the page redirecting.</h2>
        <h3>If it does not redirect automatically, please click <a href='SMLogin.jsp'>here</a>!</h3>
        </div>
        <%response.setHeader("refresh","3;URL=SMLogin.jsp"); %>
    </body>
</html>
