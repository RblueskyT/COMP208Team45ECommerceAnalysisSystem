<%-- 
    Document   : ReportDelete
    Created on : 2020-4-21, 7:16:12
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Delete</title>
    </head>
    <body>
        <%
            String rNo = request.getParameter("rNo");
        %> 
        <%
            Connection conn = null;
            PreparedStatement ps = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                String sql = "delete from salesreport where ReportNo=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, rNo);
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
        <jsp:forward page="ReportManage.jsp"/>
    </body>
</html>
