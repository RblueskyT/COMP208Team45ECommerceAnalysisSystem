<%-- 
    Document   : SRecordAdd
    Created on : 2020-4-19, 5:31:21
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Sales Record</title>
        <link href='formstyle4.css' rel='stylesheet'>
    </head>
    <body>
        <ul>    
            <li><a>System Options</a>
                <ul>
                    <li><a href="DBAInterface.jsp">Database Administrator Home</a></li>
                    <li><a href="UserLogout.jsp">Logout</a></li>
                </ul>
            </li>

            <li><a href="ComManageAdmin.jsp">Table Commodity Maintenance</a>
            </li>

            <li><a>Customer Related</a>
                <ul>
                    <li><a href="CustomerManageAdmin.jsp">Table Customer</a></li>
                    <li><a href="SRecordManageAdmin.jsp">Table ShoppingRecord</a></li>
                </ul>
            </li>
        </ul>
        <div class="form">
        <h1>Record Add Form</h1>
        <form action="SRecordAddCheck.jsp" method="post">
            <input type="text" name="rNo" placeholder="Enter Record ID"><br>
            <input type="text" name="pTime" placeholder="Enter Purchase Time: yyyy-MM-dd HH:mm:ss"><br>
            <input type="text" name="cusNo" placeholder="Enter Customer ID"><br>
            <input type="text" name="comNo" placeholder="Enter Commodity ID"><br>
            <input type="text" name="uPrice" placeholder="Enter Unit Price"><br>
            <input type="text" name="qTity" placeholder="Enter Purchase Quantity"><br>
            <input type="text" name="tPrice" placeholder="Enter Total Price: unit price x quantity"><br>
            <input type="submit" value="Submit">
        </form>
        </div>
    </body>
</html>
