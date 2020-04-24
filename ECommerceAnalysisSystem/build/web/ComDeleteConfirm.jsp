<%-- 
    Document   : ComDeleteConfirm
    Created on : 2020-4-19, 3:43:11
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Delete Confirmation</title>
        <link href='deletestyle.css' rel='stylesheet'>
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
        <div class="choicebox">
        <h1>Are you sure to delete this commodity?</h1>
        <h2>Commodity ID: <%=request.getParameter("comNo")%></h2>
        <div class="option"><a href="ComManageAdmin.jsp">No</a><a href="ComDelete.jsp?cNo=<%=request.getParameter("comNo")%>">Yes</a></div>
        </div>
    </body>
</html>
