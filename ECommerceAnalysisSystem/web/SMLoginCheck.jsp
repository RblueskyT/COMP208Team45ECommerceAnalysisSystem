<%-- 
    Document   : SMLoignCheck
    Created on : 2020-4-17, 18:08:15
    Author     : ASUS
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Manager Login Authentication</title>
    </head>
    <body>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            boolean flag = false;
            String smName = null;
            String smNo = request.getParameter("smNo");
            String smPass = request.getParameter("smPass");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                String sql = "select ManagerName from salesmanager where ManagerNo=? and ManagerPassword=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, smNo);
                ps.setString(2, smPass);
                rs = ps.executeQuery();
                if (rs.next()) {
                    smName = rs.getString(1);
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
        <jsp:forward page="SMInterface.jsp">
            <jsp:param name="username" value="<%=smName%>"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="SMLoginFailed.jsp"/>
        <%
            }
        %>
    </body>
</html>
