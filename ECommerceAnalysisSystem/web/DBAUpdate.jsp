<%-- 
    Document   : DBAUpdate
    Created on : 2020-4-19, 22:51:00
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Password Update</title>
        <link href='formstyle6.css' rel='stylesheet'>
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
        <%String adminNo = request.getParameter("adminNo");%>
        <h1>Admin Password Update Form</h1>
        <form action="DBAUpdateCheck.jsp" method="post">
            <input type="text" name="adminNo" value=<%=adminNo%> readonly><br>
            <input type="text" name="adminPass" placeholder="Enter New Password"><br>
            <input type="submit" value="Update">
        </form>
            </div>
    </body>
</html>
