<%-- 
    Document   : DAAddCheck
    Created on : 2020-4-19, 21:51:08
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Analyst Add Check</title>
    </head>
    <body>
        <%
            String anaNo = request.getParameter("anaNo");
            String sNo = request.getParameter("sNo");
            String anaName = request.getParameter("anaName");
            String anaPass = request.getParameter("anaPass");
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

                if (anaNo == "" || sNo == "" || anaName == "" || anaPass == "") {
                    flag = false;
                    rsflag = false;
                } else {
                    rsflag = true;
                    String sql = "select AnalystName from dataanalyst where AnalystNo=?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, anaNo);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        flag = false;
                    } else {
                        String sql2 = "select * from tradingcompanystaff where StaffNo=?";
                        ps = conn.prepareStatement(sql2);
                        ps.setString(1, sNo);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            if ((rs.getString("StaffName").equals(anaName)) && (rs.getString("StaffPosition").equals("Data Analyst"))) {
                                flag = true;
                                String sql3 = "insert into dataanalyst(AnalystNo, StaffNo, AnalystName, AnalystPassword) values(?,?,?,?)";
                                ps = conn.prepareStatement(sql3);
                                ps.setString(1, anaNo);
                                ps.setString(2, sNo);
                                ps.setString(3, anaName);
                                ps.setString(4, anaPass);
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
        <jsp:forward page="DAAddR.jsp">
            <jsp:param name="message" value="New Data Analyst Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="DAAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Duplicate ID and Information Should be Correct)!"/>
        </jsp:forward>
        <%
            }
        %>
    </body>
</html>
