<%-- 
    Document   : DBAAddCheck
    Created on : 2020-4-19, 21:25:16
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Add Check</title>
    </head>
    <body>
        <%
            String adminNo = request.getParameter("adminNo");
            String sNo = request.getParameter("sNo");
            String adminName = request.getParameter("adminName");
            String adminPass = request.getParameter("adminPass");
        %>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            boolean flag = false;
            boolean rsflag = false;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");

                if (adminNo == "" || sNo == "" || adminName == "" || adminPass == "") {
                    flag = false;
                    rsflag = false;
                } else {
                    rsflag = true;
                    String sql = "select AdminName from databaseadministrator where AdminNo=?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, adminNo);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        flag = false;
                    } else {
                        String sql2 = "select * from tradingcompanystaff where StaffNo=?";
                        ps = conn.prepareStatement(sql2);
                        ps.setString(1, sNo);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            if ((rs.getString("StaffName").equals(adminName)) && (rs.getString("StaffPosition").equals("Database Administrator"))) {
                                flag = true;
                                String sql3 = "insert into databaseadministrator(AdminNo, StaffNo, AdminName, AdminPassword) values(?,?,?,?)";
                                ps = conn.prepareStatement(sql3);
                                ps.setString(1, adminNo);
                                ps.setString(2, sNo);
                                ps.setString(3, adminName);
                                ps.setString(4, adminPass);
                                ps.executeUpdate();
                            } else {
                                flag = false;
                            }
                        }
                    }
                }

            } catch (Exception e) {
                System.out.println(e);
            } finally {
                try {
                    if (!flag && !rsflag) {
                        conn.close();
                    } else {
                        rs.close();
                        ps.close();
                        conn.close();
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
            }

        %>
        <%            if (flag) {
        %>
        <jsp:forward page="DBAAddR.jsp">
            <jsp:param name="message" value="New Database Admin Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="DBAAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Duplicate ID and Information Should be Correct)!"/>
        </jsp:forward>
        <%
            }
        %>
    </body>
</html>
