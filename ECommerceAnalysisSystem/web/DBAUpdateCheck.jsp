<%-- 
    Document   : DBAUpdateCheck
    Created on : 2020-4-19, 22:53:12
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Update Check</title>
    </head>
    <body>
        <%
            String adminNo = request.getParameter("adminNo");
            String adminPass = request.getParameter("adminPass");
        %>    
        <%
            Connection conn = null;
            PreparedStatement ps = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");

                String sql = "update databaseadministrator set AdminPassword=? where AdminNo=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, adminPass);
                ps.setString(2, adminNo);
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
        <jsp:forward page="StaffManage.jsp"/>
    </body>
</html>
