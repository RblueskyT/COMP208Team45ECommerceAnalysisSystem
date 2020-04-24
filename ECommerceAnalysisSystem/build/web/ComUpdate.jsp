<%-- 
    Document   : ComUpdate
    Created on : 2020-4-18, 3:10:06
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Infomation Update</title>
        <link href='formstyle2.css' rel='stylesheet'>
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
        <%String comNo=request.getParameter("comNo");%>
        <h1>Commodity Update Form</h1>
        <form action="ComUpdateCheck.jsp" method="post">
            <input type="text" name="cNo" value=<%=comNo%> readonly><br>
            <input type="text" name="cPrice" placeholder="Enter New Price"><br>
            <input type="text" name="sQuan" placeholder="Enter New Stock Quantity"><br>
            <input type="submit" value="Update">
        </form>
            </div>
    </body>
</html>