<%-- 
    Document   : StaffAddR
    Created on : 2020-4-19, 19:41:58
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Add Result</title>
        <link href='Informationstyle.css' rel='stylesheet'>
    </head>
    <body>
        <div class='Messagebox'>
            <h1><%=request.getParameter("message")%></h1>
            <h2>Please wait for the page redirecting.</h2>
            <h3>If it does not redirect automatically, please click <a href='StaffManage.jsp'>here</a>!</h3>
        </div>
        <%response.setHeader("refresh", "3;URL=StaffManage.jsp");%>
    </body>
</html>
