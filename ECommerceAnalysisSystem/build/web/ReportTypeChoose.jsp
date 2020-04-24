<%-- 
    Document   : ReportTypeChoose
    Created on : 2020-4-21, 5:46:11
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Type Choose</title>
        <link href='Choosestyle.css' rel='stylesheet'>
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
        <div class="choicebox">
            <h1>Which type of report do you want to add?</h1>
            <div class="option"><a href="DataAnalysis.jsp">Auto</a><a href="ReportAdd.jsp">Manual</a></div>
        </div>
    </body>
</html>
