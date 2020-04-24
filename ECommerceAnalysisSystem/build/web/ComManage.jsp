<%-- 
    Document   : ComManage
    Created on : 2020-4-17, 22:36:24
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Management</title>
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
            String ComName=request.getParameter("nameQuery");
            String ComType=request.getParameter("typeQuery");
        %>
        <div class="start">        
        <form action ="ComManage.jsp" method="post">
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
                    <td><a href="ComUpdate.jsp?comNo=<%=rs.getString("CommodityNo")%>">Update</a></td>
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
        <form action="ComAdd.jsp">
            <input type="submit" value="Add New Commodity">
        </form>
         </div>
    </body>
</html>
