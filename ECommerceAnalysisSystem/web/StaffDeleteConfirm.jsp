<%-- 
    Document   : StaffDeleteConfirm
    Created on : 2020-4-19, 22:22:33
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Delete Confirmation</title>
        <link href='deletestyle.css' rel='stylesheet'>
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
        <div class="choicebox">
        <h1>Are you sure to delete this Staff?</h1>
        <h2>Staff ID: <%=request.getParameter("staffNo")%></h2>
        <div class="option"><a href="StaffManage.jsp">No</a><a href="StaffDelete.jsp?staffNo=<%=request.getParameter("staffNo")%>">Yes</a></div>
        </div>
    </body>
</html>
