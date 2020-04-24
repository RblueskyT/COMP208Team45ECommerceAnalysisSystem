<%-- 
    Document   : SMWel
    Created on : 2020-4-15, 23:30:41
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Manager Home Page</title>
        <link href='Personalindexstyle.css' rel='stylesheet'>
    </head>
    <body>
        <ul>    
            <li><a>System Options</a>
                <ul>
                    <li><a href="SMInterface.jsp">Sales Manager Home</a></li>
                    <li><a href="UserLogout.jsp">Logout</a></li>
                </ul>
            </li>

            <li><a href="ComManage.jsp">Commodity Management</a>
            </li>

            <li><a>Sales and Reports</a>
                <ul>
                    <li><a href="SRecordView.jsp">View Sales Records</a></li>
                    <li><a href="ReportView.jsp">View Sales Reports</a></li>
                </ul>
            </li>
        </ul>
        <section id='Welcome'>
            <h1>Welcome, Sales Manager!</h1>
            <p>
                Please Use the Top Navigation Bar to Start Your Work
            </p>
        </section>
    </body>
</html>