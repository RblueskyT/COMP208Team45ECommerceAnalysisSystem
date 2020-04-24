<%-- 
    Document   : SMAddCheck
    Created on : 2020-4-19, 4:45:02
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Manager Add Check</title>
    </head>
    <body>
            <%
            String mNo = request.getParameter("mNo");
            String sNo = request.getParameter("sNo");
            String mName = request.getParameter("mName");
            String mPass = request.getParameter("mPass");
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
                
                if(mNo==""||sNo==""||mName==""||mPass==""){
                    flag=false;
                    rsflag=false;
                }else{
                      rsflag=true;
                      String sql = "select ManagerName from salesmanager where ManagerNo=?";
                      ps = conn.prepareStatement(sql);
                      ps.setString(1,mNo);
                      rs = ps.executeQuery();
                      if (rs.next()) {
                      flag = false;
                    }else{
                          String sql2 = "select * from tradingcompanystaff where StaffNo=?";
                          ps = conn.prepareStatement(sql2);
                          ps.setString(1,sNo);
                          rs=ps.executeQuery();
                          while(rs.next()){
                          if((rs.getString("StaffName").equals(mName))&&(rs.getString("StaffPosition").equals("Sales Manager"))){
                              flag=true;
                             String sql3 = "insert into salesmanager(ManagerNo, StaffNo, ManagerName, ManagerPassword) values(?,?,?,?)";
                              ps = conn.prepareStatement(sql3);
                              ps.setString(1,mNo);
                              ps.setString(2,sNo);
                              ps.setString(3,mName);
                              ps.setString(4,mPass);
                              ps.executeUpdate();
                          }else{
                              flag=false;
                          }
                          }
                      }
                }

            } catch (Exception e) {
                System.out.println(e);
            } finally {
                try {
                    if (!flag&&!rsflag) {
                        conn.close();
                    }else{
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
        <jsp:forward page="SMAddR.jsp">
            <jsp:param name="message" value="New Sales Manager Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="SMAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Duplicate ID and Information Should be Correct)!"/>
        </jsp:forward>
        <%
            }
        %>
    </body>
</html>
