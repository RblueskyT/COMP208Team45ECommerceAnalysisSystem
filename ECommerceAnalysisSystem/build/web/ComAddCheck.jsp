<%-- 
    Document   : ComAddCheck
    Created on : 2020-4-18, 21:28:20
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commodity Add Check</title>
    </head>
    <body>
        <%
            String comNo = request.getParameter("cNo");
            String comName=request.getParameter("cName");
            String cPrice = request.getParameter("cPrice");
            String cType=request.getParameter("cType");
            String sQuan = request.getParameter("sQuan");
        %>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            boolean flag = false;
            boolean rsflag=false;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");
                
                if(comNo==""||comName==""||cPrice==""||cType==""||sQuan==""){
                    flag=false;
                    rsflag=false;
                }else{
                      rsflag=true;
                      String sql = "select CommodityName from commodity where CommodityNo=?";
                      ps = conn.prepareStatement(sql);
                      ps.setString(1,comNo);
                      rs = ps.executeQuery();
                      if (rs.next()) {
                      flag = false;
                    }else{
                          if(Check(cPrice)&&Check(sQuan)){
                              flag=true;
                              String sql2 = "insert into commodity(CommodityNo, CommodityName, Price, CommodityType, StockQuantity) values(?,?,?,?,?)";
                              ps = conn.prepareStatement(sql2);
                              ps.setString(1,comNo);
                              ps.setString(2,comName);
                              ps.setString(3,cPrice);
                              ps.setString(4,cType);
                              ps.setString(5,sQuan);
                              ps.executeUpdate();
                          }else{
                              flag=false;
                          }
                      }
                }


            } catch (Exception e) {
                System.out.println(e);
            } finally {
                try {
                    if (!flag&&!rsflag) {
                        conn.close();
                    } else{
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
        <jsp:forward page="ComAddR.jsp">
            <jsp:param name="message" value="New Commodity Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="ComAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Empty Value, No Duplicate ID, Price and Stock Quantity Should Be Positive)!"/>
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
