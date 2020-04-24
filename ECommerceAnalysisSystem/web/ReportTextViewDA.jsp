<%-- 
    Document   : ReportViewDA
    Created on : 2020-4-21, 5:58:59
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Reader (DA)</title>
        <link href='Reportviewstyle.css' rel='stylesheet'>
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
        <div class="textread">
            <p style="text-align:justify"><%=request.getParameter("ReText")%></p>
        </div>
    </body>
</html>
