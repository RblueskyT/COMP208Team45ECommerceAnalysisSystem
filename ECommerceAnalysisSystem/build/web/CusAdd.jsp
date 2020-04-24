<%-- 
    Document   : CusAdd
    Created on : 2020-4-19, 4:36:33
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Customer</title>
        <link href='formstyle3.css' rel='stylesheet'>
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
        <h1>Customer Add Form</h1>
        <form action="CusAddCheck.jsp" method="post">
            <input type="text" name="cusNo" placeholder="Enter Customer ID"><br>
            <input type="text" name="cusG" placeholder="Enter Gender: M or F"><br>
            <input type="text" name="cusAge" placeholder="Enter Age"><br>
            <input type="text" name="cusCity" placeholder="Enter City"><br>
            <input type="submit" value="Submit">
        </form>
        </div>
    </body>
</html>
