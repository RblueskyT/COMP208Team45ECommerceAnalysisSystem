<%-- 
    Document   : ComAddR
    Created on : 2020-4-18, 22:05:15
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Add Result</title>
        <link href='Informationstyle.css' rel='stylesheet'>
    </head>
    <body>
        <div class='Messagebox'>
        <h1><%=request.getParameter("message")%></h1>
        <h2>Please wait for the page redirecting.</h2>
        <h3>If it does not redirect automatically, please click <a href='ComManage.jsp'>here</a>!</h3>
        </div>
        <%response.setHeader("refresh","3;URL=ComManage.jsp"); %>
    </body>
</html>
