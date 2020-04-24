<%-- 
    Document   : DAUpdateCheck
    Created on : 2020-4-19, 23:02:08
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Analyst Update Check</title>
    </head>
    <body>
        <%
            String anaNo = request.getParameter("anaNo");
            String anaPass = request.getParameter("anaPass");
        %>    
        <%
            Connection conn = null;
            PreparedStatement ps = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");

                String sql = "update dataanalyst set AnalystPassword=? where AnalystNo=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, anaPass);
                ps.setString(2, anaNo);
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
