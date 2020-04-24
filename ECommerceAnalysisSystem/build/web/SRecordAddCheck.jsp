<%-- 
    Document   : SRecordAddCheck
    Created on : 2020-4-19, 5:39:00
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Record Add Check</title>
    </head>
    <body>
        <%
            String rNo = request.getParameter("rNo");
            String pTime=request.getParameter("pTime");
            String cusNo = request.getParameter("cusNo");
            String comNo =request.getParameter("comNo");
            String uPrice = request.getParameter("uPrice");
            String qTity = request.getParameter("qTity");
            String tPrice = request.getParameter("tPrice");
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
                
                if(rNo==""||pTime==""||cusNo==""||comNo==""||uPrice==""||qTity==""||tPrice==""){
                    flag=false;
                    rsflag=false;
                }else{
                    if(TCheck(pTime)){
                      rsflag=true;
                      String sql = "select RecordNo from shoppingrecord where RecordNo=?";
                      ps = conn.prepareStatement(sql);
                      ps.setString(1,rNo);
                      rs = ps.executeQuery();
                      if (rs.next()) {
                      flag = false;
                    }else{
                          if(Check(uPrice)&&Check(qTity)){
                              int result=Integer.parseInt(uPrice)*Integer.parseInt(qTity);
                              if(Integer.parseInt(tPrice)==result){
                              flag=true;
                              String sql2 = "insert into shoppingrecord(RecordNo, PurchaseTime, CustomerNo, CommodityNo, UnitPrice, Quantity, TotalPrice) values(?,?,?,?,?,?,?)";
                              ps = conn.prepareStatement(sql2);
                              ps.setString(1,rNo);
                              ps.setString(2,pTime);
                              ps.setString(3,cusNo);
                              ps.setString(4,comNo);
                              ps.setString(5,uPrice);
                              ps.setString(6,qTity);
                              ps.setString(7,tPrice);
                              ps.executeUpdate();
                              }else{
                                  flag=false;
                              }
                          }else{
                              flag=false;
                          }
                      }
                    }else{
                        flag=false;
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
        <jsp:forward page="SRecordAddR.jsp">
            <jsp:param name="message" value="New Shopping Record Add Successfully!"/>
        </jsp:forward>
        <%
        } else {
        %>
        <jsp:forward page="SRecordAddR.jsp">
            <jsp:param name="message" value="Add Failed! Please Check Your Input (No Empty Value, No Duplicate ID, Price and Quantity Should Be Positive etc.)!"/>
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

            private static boolean TCheck(String str){
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                 try{
                     sdf.parse(str);
                     return true;
                      }catch(ParseException e){
                           return false;
                    }

              }

        %>
    </body>
</html>
