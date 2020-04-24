<%-- 
    Document   : ComUpdateCheckA
    Created on : 2020-4-19, 2:57:35
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Check Update (Admin)</title>
    </head>
    <body>
        <%
            String comNo = request.getParameter("cNo");
            String cName = request.getParameter("cName");
            String cPrice = request.getParameter("cPrice");
            String cType = request.getParameter("cType");
            String sQuan = request.getParameter("sQuan");
        %>    
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            boolean flag = false;
            boolean flagP=false;
            boolean flagS=false;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                if (cName != "" || cPrice != "" || cType != "" || sQuan != "") {
                    if (cName != "") {
                        flag = true;
                        String sql = "update commodity set CommodityName=? where CommodityNo=?";
                        ps = conn.prepareStatement(sql);
                        ps.setString(1, cName);
                        ps.setString(2, comNo);
                        ps.executeUpdate();
                    } else {
                        flag = true;
                    }

                    if (cPrice != "") {
                        if (Check(cPrice)) {
                            flag = true;
                            flagP=true;
                            String sql = "update commodity set Price=? where CommodityNo=?";
                            ps = conn.prepareStatement(sql);
                            ps.setString(1, cPrice);
                            ps.setString(2, comNo);
                            ps.executeUpdate();
                        } else {
                            flag = false;
                            flagP=false;
                        }
                    } else {
                        flag = true;
                        flagP=true;
                    }

                    if (cType != "") {
                        flag = true;
                        String sql = "update commodity set CommodityType=? where CommodityNo=?";
                        ps = conn.prepareStatement(sql);
                        ps.setString(1, cType);
                        ps.setString(2, comNo);
                        ps.executeUpdate();
                    } else {
                        flag = true;
                    }

                    if (sQuan != "") {
                        if (Check(sQuan)) {
                            flag = true;
                            flagS=true;
                            String sql = "update commodity set StockQuantity=? where CommodityNo=?";
                            ps = conn.prepareStatement(sql);
                            ps.setString(1, sQuan);
                            ps.setString(2, comNo);
                            ps.executeUpdate();
                        } else {
                            flag = false;
                            flagS=false;
                        }
                    } else {
                        flag = true;
                        flagS=true;
                    }
                } else {
                    flag = false;
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
        <%            if (flag&&flagP&&flagS) {
        %>
        <jsp:forward page="ComUpdateAR.jsp">
            <jsp:param name="message" value="All Update Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="ComUpdateAR.jsp">
            <jsp:param name="message" value="Something Update Failed! Price and Stock Quantity Should Be Positive Integer!"/>
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
