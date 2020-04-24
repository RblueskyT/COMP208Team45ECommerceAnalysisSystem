<%-- 
    Document   : DAUpdate
    Created on : 2020-4-19, 22:51:18
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Analyst Update</title>
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
        <%String anaNo = request.getParameter("anaNo");%>
        <h1>Data Analyst Password Update Form</h1>
        <form action="DAUpdateCheck.jsp" method="post">
            <input type="text" name="anaNo" value=<%=anaNo%> readonly><br>
            <input type="text" name="anaPass" placeholder="Enter New Password"><br>
            <input type="submit" value="Update">
        </form>
            </div>
    </body>
</html>
