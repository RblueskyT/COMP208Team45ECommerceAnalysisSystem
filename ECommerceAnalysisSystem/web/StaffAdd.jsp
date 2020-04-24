<%-- 
    Document   : StaffAdd
    Created on : 2020-4-19, 19:12:54
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Staff</title>
        <link href='formstyle5.css' rel='stylesheet'>
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
        <h1>Staff Add Form</h1>
        <form action="StaffAddCheck.jsp" method="post">
            <input type="text" name="sNo" placeholder="Enter Staff ID"><br>
            <input type="text" name="sName" placeholder="Enter Name"><br>
            <input type="text" name="sAge" placeholder="Enter Age"><br>
            <select name="gender">
                <option value="0">-Please Select Gender-</option>
                <option value="M">M</option>
                <option value="F">F</option>
            </select><br>
            <select name="position">
                <option value="0">-Please Select Position-</option>
                <option value="Sales Manager">Sales Manager</option>
                <option value="Database Administrator">Database Administrator</option>
                <option value="Safety Specialist">Safety Specialist</option>
                <option value="Data Analyst">Data Analyst</option>
            </select><br>
            <input type="submit" value="Submit">
        </form>
        </div>
    </body>
</html>
