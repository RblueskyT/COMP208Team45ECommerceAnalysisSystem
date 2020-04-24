<%-- 
    Document   : ReportAddCheck
    Created on : 2020-4-21, 6:02:24
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Add Check</title>
    </head>
    <body>
        <%
            String rNo = request.getParameter("rNo");
            String rTitle = request.getParameter("rTitle");
            String rType = "M";
            String rText = request.getParameter("rText");
            
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

                if (rNo == "" || rTitle == "" || rText == "") {
                    flag = false;
                    rsflag = false;
                } else {
                    rsflag = true;
                    String sql = "select ReportTitle from salesreport where ReportNo=?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, rNo);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        flag = false;
                    } else {
                            flag = true;
                            String sql2 = "insert into salesreport(ReportNo, ReportTitle, ReportType, ReportText) values(?,?,'M',?)";
                            ps = conn.prepareStatement(sql2);
                            ps.setString(1, rNo);
                            ps.setString(2, rTitle);
                            ps.setString(3, rText);
                            ps.executeUpdate();
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
        <jsp:forward page="ReportAddR.jsp">
            <jsp:param name="message" value="New Report Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="ReportAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Empty Value, No Duplicate ID)!"/>
        </jsp:forward>
        <%
            }
        %>
     
    </body>
</html>
