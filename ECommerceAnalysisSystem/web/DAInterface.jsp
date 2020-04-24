<%-- 
    Document   : DAInterface
    Created on : 2020-4-17, 21:18:43
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Analyst Home Page</title>
        <link href='Personalindexstyle.css' rel='stylesheet'>
    </head>
    <body>
        <ul>    
            <li><a>System Options</a>
                <ul>
                    <li><a href="DAInterface.jsp">Data Analyst Home</a></li>
                    <li><a href="UserLogout.jsp">Logout</a></li>
                </ul>
            </li>

            <li><a href="DataAnalysis.jsp">Data Analysis Tool</a>
            </li>

            <li><a href='ReportManage.jsp'>Sales Reports Management</a>
            </li>
        </ul>
        <section id='Welcome'>
            <h1>Welcome, Data Analyst!</h1>
            <p>
                Please Use the Top Navigation Bar to Start Your Work
            </p>
        </section>
    </body>
</html>
