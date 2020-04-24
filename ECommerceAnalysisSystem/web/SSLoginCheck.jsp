<%-- 
    Document   : SSLoginCheck
    Created on : 2020-4-17, 21:07:10
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Safety Specialist Login Authentication</title>
    </head>
    <body>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            boolean flag = false;
            String safetyName = null;
            String safetyNo = request.getParameter("safetyNo");
            String safetyPass = request.getParameter("safetyPass");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                String sql = "select SafetyName from safetyspecialist where SafetyNo=? and SafetyPassword=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, safetyNo);
                ps.setString(2, safetyPass);
                rs = ps.executeQuery();
                if (rs.next()) {
                    safetyName = rs.getString(1);
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
        <jsp:forward page="SSInterface.jsp">
            <jsp:param name="username" value="<%=safetyName%>"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="SSLoginFailed.jsp"/>
        <%
            }
        %>
    </body>
</html>
