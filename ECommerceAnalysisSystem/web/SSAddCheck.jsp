<%-- 
    Document   : SSAddCheck
    Created on : 2020-4-19, 21:42:36
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Safety Specialist Add Check</title>
    </head>
    <body>
        <%
            String safeNo = request.getParameter("safeNo");
            String sNo = request.getParameter("sNo");
            String safeName = request.getParameter("safeName");
            String safePass = request.getParameter("safePass");
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

                if (safeNo == "" || sNo == "" || safeName == "" || safePass == "") {
                    flag = false;
                    rsflag = false;
                } else {
                    rsflag = true;
                    String sql = "select SafetyName from safetyspecialist where SafetyNo=?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, safeNo);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        flag = false;
                    } else {
                        String sql2 = "select * from tradingcompanystaff where StaffNo=?";
                        ps = conn.prepareStatement(sql2);
                        ps.setString(1, sNo);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            if ((rs.getString("StaffName").equals(safeName)) && (rs.getString("StaffPosition").equals("Safety Specialist"))) {
                                flag = true;
                                String sql3 = "insert into safetyspecialist(SafetyNo, StaffNo, SafetyName, SafetyPassword) values(?,?,?,?)";
                                ps = conn.prepareStatement(sql3);
                                ps.setString(1, safeNo);
                                ps.setString(2, sNo);
                                ps.setString(3, safeName);
                                ps.setString(4, safePass);
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
        <jsp:forward page="SSAddR.jsp">
            <jsp:param name="message" value="New Safety Specialist Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="SSAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Duplicate ID and Information Should be Correct)!"/>
        </jsp:forward>
        <%
            }
        %>
    </body>
</html>
