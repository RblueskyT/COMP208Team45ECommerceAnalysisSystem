<%-- 
    Document   : DBAAdd
    Created on : 2020-4-19, 21:24:59
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Database Admin</title>
        <link href='formstyle3.css' rel='stylesheet'>
    </head>
    <body>
        <ul>    
            <li><a>System Options</a>
                <ul>
                    <li><a href="SSInterface.jsp">Safety Specialist Home</a></li>
                    <li><a href="UserLogout.jsp">Logout</a></li>
                </ul>
            </li>

            <li><a href="StaffManage.jsp">User Accounts Management</a>
            </li>

            <li><a>System Safety</a>
                <ul>
                    <li><a href="DMonitor.jsp">Database Monitor</a></li>
                    <li><a href="SMonitor.jsp">Server Monitor</a></li>
                    <li><a href="SecurityIssueReport.jsp">Report Security Vulnerabilities</a></li>
                </ul>
            </li>
        </ul>
        <div class="form">
        <h1>Database Admin Add Form</h1>
        <form action="DBAAddCheck.jsp" method="post">
            <input type="text" name="adminNo" placeholder="Enter Admin ID"><br>
            <input type="text" name="sNo" placeholder="Enter Staff No"><br>
            <input type="text" name="adminName" placeholder="Enter Staff Name"><br>
            <input type="text" name="adminPass" placeholder="Enter Password"><br>
            <input type="submit" value="Submit">
        </form>
        </div>
    </body>
</html>
