<%-- 
    Document   : SRecordView
    Created on : 2020-4-18, 22:33:26
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Shopping Records</title>
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
            String StartTime=request.getParameter("minQuery");
            String EndTime=request.getParameter("maxQuery");
        %>
        <div class="start">
        <form action ="SRecordView.jsp" method="post">
            <input type="text" name="minQuery" placeholder="Start Date: yyyy-mm-dd">
            <input type="text" name="maxQuery" placeholder="End Date: yyyy-mm-dd">
            <input type="submit" value="Search">
        </form>
        </div>
        <table class="table" border="1" width="80%" align="center">
            <tr>
                <th>Serial Number</th>
                <th>Record Number</th>
                <th>Purchase Time</th>
                <th>Customer Number</th>
                <th>Commodity Number</th>
                <th>Unit Price</th>
                <th>Quantity</th>
                <th>Total Price</th>
            </tr>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                
                if((StartTime==null&&EndTime==null)||(StartTime==""&&EndTime=="")){
                    String sql="select * from shoppingrecord";
                    ps=conn.prepareStatement(sql);
                }else{
                    if(StartTime!=""&&EndTime==""){
                    String sql="select * from shoppingrecord where PurchaseTime>=?";
                    ps=conn.prepareStatement(sql);
                    ps.setString(1,StartTime);
                    
                    }else if(StartTime==null&&EndTime!=""){
                   String sql="select * from select * from shoppingrecord where PurchaseTime<=?";
                    ps=conn.prepareStatement(sql);
                    ps.setString(1,EndTime);
                    }else{
                    String sql="select * from shoppingrecord where PurchaseTime>=? and PurchaseTime<=?";
                    ps=conn.prepareStatement(sql);
                    ps.setString(1,StartTime);
                    ps.setString(2,EndTime);
                    }
                }
                
                
                rs=ps.executeQuery();
                
                int i=0;
                while(rs.next()){
                %>
                <tr align="center">
                    <td><%out.print(++i);%></td>
                    <td><%=rs.getString("RecordNo")%></td>
                    <td><%=rs.getString("PurchaseTime")%></td>
                    <td><%=rs.getString("CustomerNo")%></td>
                    <td><%=rs.getString("CommodityNo")%></td>
                    <td><%=rs.getString("UnitPrice")%></td>
                    <td><%=rs.getString("Quantity")%></td>
                    <td><%=rs.getString("TotalPrice")%></td>
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
