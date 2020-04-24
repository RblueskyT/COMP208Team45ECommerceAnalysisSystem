<%-- 
    Document   : StaffDelete
    Created on : 2020-4-19, 22:25:06
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Deletion</title>
    </head>
    <body>
        <%
            String staffNo = request.getParameter("staffNo");
        %> 
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                
                String sql = "select * from tradingcompanystaff where StaffNo=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, staffNo);
                rs = ps.executeQuery();
                while (rs.next()) {
                    if (rs.getString("StaffPosition").equals("Sales Manager")) {
                        String sql2 = "delete from salesmanager where StaffNo=?";
                        ps = conn.prepareStatement(sql2);
                        ps.setString(1,staffNo);
                        ps.executeUpdate();
                    }else if (rs.getString("StaffPosition").equals("Database Administrator")) {
                        String sql2 = "delete from databaseadministrator where StaffNo=?";
                        ps = conn.prepareStatement(sql2);
                        ps.setString(1,staffNo);
                        ps.executeUpdate();
                    }else if (rs.getString("StaffPosition").equals("Safety Specialist")) {
                        String sql2 = "delete from safetyspecialist where StaffNo=?";
                        ps = conn.prepareStatement(sql2);
                        ps.setString(1,staffNo);
                        ps.executeUpdate();
                    }else if (rs.getString("StaffPosition").equals("Data Analyst")) {
                        String sql2 = "delete from dataanalyst where StaffNo=?";
                        ps = conn.prepareStatement(sql2);
                        ps.setString(1,staffNo);
                        ps.executeUpdate();
                    }
                }
                
                String sql3 = "delete from tradingcompanystaff where StaffNo=?";
                ps = conn.prepareStatement(sql3);
                ps.setString(1, staffNo);
                ps.executeUpdate();

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
        <jsp:forward page="StaffManage.jsp"/>
    </body>
</html>
