<%-- 
    Document   : SRecordManageAdmin
    Created on : 2020-4-19, 5:15:10
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Records Maintenance</title>
        <link href='Tablepagestyle.css' rel='stylesheet'>
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
        <div class="start">
            <form>
                <input type="text" placeholder="No Search Function for ShoppingRecord" readonly="">
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
                
                String sql="select * from shoppingrecord";
                ps=conn.prepareStatement(sql);
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
        <div class="end">
        <form action="SRecordAdd.jsp">
            <input type="submit" value="Add New Record">
        </form>
         </div>
    </body>
</html>
