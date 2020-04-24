<%-- 
    Document   : ComUpdateAdmin
    Created on : 2020-4-19, 2:52:06
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Update (Admin)</title>
        <link href='formstyle.css' rel='stylesheet'>
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
        <%String comNo=request.getParameter("comNo");%>
        <h1>Commodity Update Form</h1>
        <form action="ComUpdateCheckA.jsp" method="post">
            <input type="text" name="cNo" value=<%=comNo%> readonly><br>
            <input type="text" name="cName" placeholder="Enter New Commodity Name"><br>
            <input type="text" name="cPrice" placeholder="Enter New Commodity Price"><br>
            <input type="text" name="cType" placeholder="Enter New Commodity Type"><br>
            <input type="text" name="sQuan" placeholder="Enter New Stock Quantity"><br>
            <input type="submit" value="Submit">
        </form>
         </div>
    </body>
</html>
