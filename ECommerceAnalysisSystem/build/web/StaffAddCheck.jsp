<%-- 
    Document   : StaffAddCheck
    Created on : 2020-4-19, 19:19:12
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Add Check</title>
    </head>
    <body>
          <%
            String sNo = request.getParameter("sNo");
            String sName=request.getParameter("sName");
            String sAge=request.getParameter("sAge");
            String gender = request.getParameter("gender");
            String position =request.getParameter("position");
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
                
                if(sNo==""||sName==""||sAge==""||gender.equals("0")||position.equals("0")){
                    flag=false;
                    rsflag=false;
                }else{
                      rsflag=true;
                      String sql = "select StaffName from tradingcompanystaff where StaffNo=?";
                      ps = conn.prepareStatement(sql);
                      ps.setString(1,sNo);
                      rs = ps.executeQuery();
                      if (rs.next()) {
                      flag = false;
                    }else{
                          if(Check(sAge)){
                              flag=true;
                              String sql2 = "insert into tradingcompanystaff(StaffNo, StaffName, StaffAge, StaffGender, StaffPosition) values(?,?,?,?,?)";
                              ps = conn.prepareStatement(sql2);
                              ps.setString(1,sNo);
                              ps.setString(2,sName);
                              ps.setString(3,sAge);
                              ps.setString(4,gender);
                              ps.setString(5,position);
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
        <jsp:forward page="StaffAddR.jsp">
            <jsp:param name="message" value="New Staff Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="StaffAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Empty Value, No Duplicate ID, Age Should Be Equal or Greater than 18)!"/>
        </jsp:forward>
        <%
            }
        %>
        <%!
            private static boolean Check(String str) {
                try {
                    int check = Integer.parseInt(str);
                    if (check >= 18) {
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
