<%-- 
    Document   : CusAddCheck
    Created on : 2020-4-19, 4:45:02
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Add Check</title>
    </head>
    <body>
            <%
            String cusNo = request.getParameter("cusNo");
            String cusG=request.getParameter("cusG");
            String cusAge = request.getParameter("cusAge");
            String cusCity=request.getParameter("cusCity");
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
                
                if(cusNo==""||cusG==""||cusCity==""){
                    flag=false;
                    rsflag=false;
                }else{
                      rsflag=true;
                      String sql = "select CustomerCity from customer where CustomerNo=?";
                      ps = conn.prepareStatement(sql);
                      ps.setString(1,cusNo);
                      rs = ps.executeQuery();
                      if (rs.next()) {
                      flag = false;
                    }else{
                          if(cusG.equals("M")||cusG.equals("F")){
                          if(Check(cusAge)){
                              flag=true;
                              String sql2 = "insert into customer(CustomerNo, CustomerGender, CustomerAge, CustomerCity) values(?,?,?,?)";
                              ps = conn.prepareStatement(sql2);
                              ps.setString(1,cusNo);
                              ps.setString(2,cusG);
                              ps.setString(3,cusAge);
                              ps.setString(4,cusCity);
                              ps.executeUpdate();
                          }else if(cusAge==""){
                              flag=true;
                              String sql2 = "insert into customer(CustomerNo, CustomerGender, CustomerCity) values(?,?,?)";
                              ps = conn.prepareStatement(sql2);
                              ps.setString(1,cusNo);
                              ps.setString(2,cusG);
                              ps.setString(4,cusCity);
                              ps.executeUpdate();
                          }else{
                              flag=false;
                          }
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
        <jsp:forward page="CusAddR.jsp">
            <jsp:param name="message" value="New Customer Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="CusAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Duplicate ID, Gender Is M or F and Age Should Be Positive or Null)!"/>
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
