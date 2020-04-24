<%-- 
    Document   : ComUpdateCheck
    Created on : 2020-4-18, 19:16:09
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Update Check</title>
    </head>
    <body>
        <%
            String comNo = request.getParameter("cNo");
            String cPrice = request.getParameter("cPrice");
            String sQuan = request.getParameter("sQuan");
        %>    
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            boolean flag = false;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");

                if (cPrice != "" && sQuan == "") {
                    if (Check(cPrice)) {
                        flag = true;
                        String sql = "update commodity set Price=? where CommodityNo=?";
                        ps = conn.prepareStatement(sql);
                        ps.setString(1, cPrice);
                        ps.setString(2, comNo);
                        ps.executeUpdate();
                    } else {
                        flag = false;
                    }
                }else if (cPrice == "" && sQuan != "") {
                    if (Check(sQuan)) {
                        flag = true;
                        String sql = "update commodity set StockQuantity=? where CommodityNo=?";
                        ps = conn.prepareStatement(sql);
                        ps.setString(1, sQuan);
                        ps.setString(2, comNo);
                        ps.executeUpdate();

                    } else {
                        flag = false;
                    }
                }else if (cPrice != "" && sQuan != "") {
                    if (Check(cPrice) && Check(sQuan)) {
                        flag = true;
                        String sql = "update commodity set Price=?, StockQuantity=? where CommodityNo=?";
                        ps = conn.prepareStatement(sql);
                        ps.setString(1, cPrice);
                        ps.setString(2, sQuan);
                        ps.setString(3, comNo);
                        ps.executeUpdate();
                    } else {
                        flag = false;
                    }
                }

            } catch (Exception e) {
                System.out.println(e);
            } finally {
                try {
                    if (flag) {
                        ps.close();
                        conn.close();
                    } else {
                        conn.close();
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
            }

        %>
        <%            if (flag) {
        %>
        <jsp:forward page="ComUpdateR.jsp">
            <jsp:param name="message" value="Update Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="ComUpdateR.jsp">
            <jsp:param name="message" value="Update Failed! Price and Stock Quantity Should Be Positive Integer!"/>
        </jsp:forward>
        <%
            }
        %>
        <%!
            private static boolean Check(String str) {
                try {
                    int check = Integer.parseInt(str);
                    if (check >= 0) {
                        return true;
                    } else {
                        return false;
                    }
                } catch (NumberFormatException e) {
                    return false;
                } catch (NullPointerException e) {
                    return false;
                }

            }

        %>
    </body>
</html>
