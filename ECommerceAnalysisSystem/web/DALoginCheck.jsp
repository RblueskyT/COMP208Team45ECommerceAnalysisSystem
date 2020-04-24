<%-- 
    Document   : DALoginCheck
    Created on : 2020-4-17, 21:18:19
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Analyst Login Authentication</title>
    </head>
    <body>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            boolean flag = false;
            String analystName = null;
            String analystNo = request.getParameter("analystNo");
            String analystPass = request.getParameter("analystPass");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                String sql = "select AnalystName from dataanalyst where AnalystNo=? and AnalystPassword=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, analystNo);
                ps.setString(2, analystPass);
                rs = ps.executeQuery();
                if (rs.next()) {
                    analystName = rs.getString(1);
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
        <jsp:forward page="DAInterface.jsp">
            <jsp:param name="username" value="<%=analystName%>"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="DALoginFailed.jsp"/>
        <%
            }
        %>
    </body>
</html>
