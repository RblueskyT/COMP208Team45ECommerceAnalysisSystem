<%-- 
    Document   : ReportView
    Created on : 2020-4-19, 0:31:18
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Report</title>
        <link href='Tablepagestyle.css' rel='stylesheet'>
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
        <%
            String RepTitle=request.getParameter("repQuery");
        %>
        <div class="start">
        <form action ="ReportView.jsp" method="post">
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
                     if(RepTitle==null||RepTitle==""){
                    String sql="select * from salesreport";
                    ps=conn.prepareStatement(sql);
                     }else{
                    String sql="select * from salesreport where ReportTitle like ?";
                    ps=conn.prepareStatement(sql);
                    ps.setString(1,"%"+RepTitle+"%");
                     }
                     
                rs=ps.executeQuery();
                
                int i=0;
                while(rs.next()){
                %>
                <tr align="center">
                    <td><%out.print(++i);%></td>
                    <td><%=rs.getString("ReportNo")%></td>
                    <td><%=rs.getString("ReportTitle")%></td>
                    <td><%=rs.getString("ReportType")%></td>
                    <td><a href="ReportTextView.jsp?ReText=<%=rs.getString("ReportText")%>">View</a></td>
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
    </body>
</html>
