<%-- 
    Document   : ComDelete
    Created on : 2020-4-19, 3:45:28
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Deletion</title>
    </head>
    <body>
       <%
            String cNo = request.getParameter("cNo");
        %> 
        <%
            Connection conn = null;
            PreparedStatement ps = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                String sql = "delete from commodity where CommodityNo=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, cNo);
                ps.executeUpdate();

            } catch (Exception e) {
                System.out.println(e);
            } finally {
                try {
                    ps.close();
                    conn.close();
                } catch (Exception e) {
                    System.out.println(e);
                }
            }

        %>
        <jsp:forward page="ComManageAdmin.jsp"/>
    </body>
</html>
