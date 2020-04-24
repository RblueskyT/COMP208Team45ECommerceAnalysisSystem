<%-- 
    Document   : ComManageAdmin
    Created on : 2020-4-19, 2:37:58
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Table Commodity Maintenance</title>
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
        <%
            String ComName=request.getParameter("nameQuery");
            String ComType=request.getParameter("typeQuery");
        %>
        <div class="start">
        <form action ="ComManageAdmin.jsp" method="post">
            <input type="text" name="nameQuery" placeholder="Keyword of Commodity Name">
            <input type="text" name="typeQuery" placeholder="Keyword of Commodity Type">
            <input type="submit" value="Search">
        </form>
        </div>
        <table class="table" border="1" width="80%" align="center">
            <tr>
                <th>Serial Number</th>
                <th>Commodity ID</th>
                <th>Commodity Name</th>
                <th>Price</th>
                <th>Commodity Type</th>
                <th>Stock Quantity</th>
                <th>Operation</th>
            </tr>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                
                if(ComName==null&&ComType==null){
                    String sql="select * from commodity";
                    ps=conn.prepareStatement(sql);
                }else{
                    if(ComName!=null&&ComType==null){
                    String sql="select * from commodity where CommodityName like ?";
                    ps=conn.prepareStatement(sql);
                    ps.setString(1,"%"+ComName+"%");
                    }else if(ComName==null&&ComType!=null){
                   String sql="select * from commodity where CommodityType like ?";
                    ps=conn.prepareStatement(sql);
                    ps.setString(1,"%"+ComType+"%");
                    }else{
                    String sql="select * from commodity where CommodityName like ? and CommodityType like ?";
                    ps=conn.prepareStatement(sql);
                    ps.setString(1,"%"+ComName+"%");
                    ps.setString(2,"%"+ComType+"%");
                    }
                }
                
                rs=ps.executeQuery();
                
                int i=0;
                while(rs.next()){
                %>
                <tr align="center">
                    <td><%out.print(++i);%></td>
                    <td><%=rs.getString("CommodityNo")%></td>
                    <td><%=rs.getString("CommodityName")%></td>
                    <td><%=rs.getString("Price")%></td>
                    <td><%=rs.getString("CommodityType")%></td>
                    <td><%=rs.getString("StockQuantity")%></td>
                    <td><a href="ComUpdateAdmin.jsp?comNo=<%=rs.getString("CommodityNo")%>">Update</a>
                        <a href="ComDeleteConfirm.jsp?comNo=<%=rs.getString("CommodityNo")%>">Delete</a>
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
    </body>
</html>
