<%-- 
    Document   : ReportDeleteConfirm
    Created on : 2020-4-21, 7:11:00
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Delete Confirm</title>
        <link href='deletestyle.css' rel='stylesheet'>
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
        <div class="choicebox">
            <h1>Are you sure to delete this Report?</h1>
            <h2>Report ID: <%=request.getParameter("rNo")%></h2>
            <div class="option"><a href="ReportManage.jsp">No</a><a href="ReportDelete.jsp?rNo=<%=request.getParameter("rNo")%>">Yes</a></div>
        </div>
    </body>
</html>
