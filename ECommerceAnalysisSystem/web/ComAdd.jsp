<%-- 
    Document   : ComAdd
    Created on : 2020-4-18, 21:06:40
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Commodity</title>
        <link href='formstyle.css' rel='stylesheet'>
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
        <div class="form">
         <h1>Commodity Add Form</h1>
        <form action="ComAddCheck.jsp" method="post">
            <input type="text" name="cNo" placeholder="Enter Commodity ID"><br>
            <input type="text" name="cName" placeholder="Enter Commodity Name"><br>
            <input type="text" name="cPrice" placeholder="Enter Commodity Price"><br>
            <input type="text" name="cType" placeholder="Enter Commodity Type"><br>
            <input type="text" name="sQuan" placeholder="Enter Stock Quantity"><br>
            <input type="submit" value="Submit">
        </form>
         </div>
    </body>
</html>
