<%-- 
    Document   : DBALoginFailed
    Created on : 2020-4-17, 21:03:06
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DBA Login Failed</title>
        <link href='Informationstyle.css' rel='stylesheet'>
    </head>
    <body>
        <div class='Messagebox'>
            <h1>Warning: Invalid Admin Number or Password!</h1>
            <h2>Please wait for the page redirecting.</h2>
            <h3>If it does not redirect automatically, please click <a href='DBALogin.jsp'>here</a>!</h3>
        </div>
        <%response.setHeader("refresh", "3;URL=DBALogin.jsp");%>
    </body>
</html>