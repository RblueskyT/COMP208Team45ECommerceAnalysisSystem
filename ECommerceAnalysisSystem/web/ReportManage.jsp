<%-- 
    Document   : ReportManage
    Created on : 2020-4-21, 4:43:50
    Author     : Zian Wang
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Management</title>
        <link href='Tablepagestyle.css' rel='stylesheet'>
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
        <%
            String RepTitle = request.getParameter("repQuery");
        %>
        <div class="start">
            <form action ="ReportManage.jsp" method="post">
                <input type="text" name="repQuery" placeholder="Keyword of Report Title">
                <input type="submit" value="Search">
            </form>
        </div>
        <table class="table" border="1" width="80%" align="center">
            <tr>
                <th>Serial Number</th>
                <th>Report ID</th>
                <th>Report Title</th>
                <th>Report Type</th>
                <th>Operation</th>
            </tr>
            <%
                Connection conn = null;
                PreparedStatement ps = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                    if (RepTitle == null || RepTitle == "") {
                        String sql = "select * from salesreport";
                        ps = conn.prepareStatement(sql);
                    } else {
                        String sql = "select * from salesreport where ReportTitle like ?";
                        ps = conn.prepareStatement(sql);
                        ps.setString(1, "%" + RepTitle + "%");
                    }

                    rs = ps.executeQuery();

                    int i = 0;
                    while (rs.next()) {
            %>
            <tr align="center">
                <td><%out.print(++i);%></td>
                <td><%=rs.getString("ReportNo")%></td>
                <td><%=rs.getString("ReportTitle")%></td>
                <td><%=rs.getString("ReportType")%></td>
                <td><a href="ReportTextViewDA.jsp?ReText=<%=rs.getString("ReportText")%>">View</a>
                    <a href="ReportDeleteConfirm.jsp?rNo=<%=rs.getString("ReportNo")%>">Delete</a>
                </td>
            </tr>
            <%
                    }

                } catch (Exception e) {
                    System.out.println(e);
                } finally {
                    try {
                        rs.close();
                        ps.close();
                        conn.close();
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }

            %>
        </table>
        <div class="end">
            <form action="ReportTypeChoose.jsp">
                <input type="submit" value="Add New Report">
            </form>
        </div>
    </body>
</html>
