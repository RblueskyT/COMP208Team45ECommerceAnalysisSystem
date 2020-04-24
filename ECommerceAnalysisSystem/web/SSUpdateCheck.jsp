<%-- 
    Document   : SSUpdateCheck
    Created on : 2020-4-19, 22:57:52
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Safety Update Check</title>
    </head>
    <body>
        <%
            String safeNo = request.getParameter("safeNo");
            String safePass = request.getParameter("safePass");
        %>    
        <%
            Connection conn = null;
            PreparedStatement ps = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");

                String sql = "update safetyspecialist set SafetyPassword=? where SafetyNo=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, safePass);
                ps.setString(2, safeNo);
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
