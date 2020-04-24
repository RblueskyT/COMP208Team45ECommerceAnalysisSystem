<%-- 
    Document   : DBALoginCheck
    Created on : 2020-4-17, 20:53:25
    Author     : Zian Wang
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database Administrator Login Authentication</title>
    </head>
    <body>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            boolean flag = false;
            String adminName = null;
            String adminNo = request.getParameter("adminNo");
            String adminPass = request.getParameter("adminPass");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                String sql = "select AdminName from databaseadministrator where AdminNo=? and AdminPassword=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, adminNo);
                ps.setString(2, adminPass);
                rs = ps.executeQuery();
                if (rs.next()) {
                    adminName = rs.getString(1);
                    flag = true;
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
        <%
            if (flag) {
        %>
        <jsp:forward page="DBAInterface.jsp">
            <jsp:param name="username" value="<%=adminName%>"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="DBALoginFailed.jsp"/>
        <%
            }
        %>
    </body>
</html>
