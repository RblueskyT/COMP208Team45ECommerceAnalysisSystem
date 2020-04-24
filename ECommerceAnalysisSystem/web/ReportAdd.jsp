<%-- 
    Document   : ReportAdd
    Created on : 2020-4-21, 6:02:14
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Report</title>
        <link href='formstyle7.css' rel='stylesheet'>
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
        <div class="form">
            <h1>Write New Sales Report</h1>
            <form action="ReportAddCheck.jsp" method="post">
                <input type="text" name="rNo" placeholder="Enter Report ID"><br>
                <input type="text" name="rTitle" placeholder="Enter Report Title"><br>
                <input type="text" name="rType" value="Report Type: M" readonly><br>
                <textarea rows="3000" cols="100" wrap="physical/(hard)" name="rText">Please write your sales report here...</textarea><br>
                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
