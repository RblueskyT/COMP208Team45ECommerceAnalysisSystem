<%-- 
    Document   : SecurityIssueReport
    Created on : 2020-4-20, 22:26:21
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Security Vulnerabilities</title>
        <link href='othertextreadstyle.css' rel='stylesheet'>
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
        <div class="textread">
            <h1>Report Security Vulnerabilities</h1>
            <p style="text-align:justify">This part has not be implemented because the lack of experience in establishing security mechanism and implementing the function of updating security patches.</p>
            <p style="text-align:justify">This function is designed to help safety specialist to report potential security vulnerabilities and then collaborates with other specialists to make security patches
            and update them to the security mechanism of this system.</p>
        </div>
    </body>
</html>
