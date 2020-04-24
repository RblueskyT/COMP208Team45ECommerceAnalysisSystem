<%-- 
    Document   : StaffManage
    Created on : 2020-4-19, 15:47:37
    Author     : ASUS
--%>

<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Accounts Management</title>
        <link href='Tablepagestyle.css' rel='stylesheet'>
    </head>
    <body>
        <ul>    
            <li><a>System Options</a>
                <ul>
                    <li><a href="SSInterface.jsp">Safety Specialist Home</a></li>
                    <li><a href="UserLogout.jsp">Logout</a></li>
                </ul>
            </li>

            <li><a href="StaffManage.jsp">User Accounts Management</a>
            </li>

            <li><a>System Safety</a>
                <ul>
                    <li><a href="DMonitor.jsp">Database Monitor</a></li>
                    <li><a href="SMonitor.jsp">Server Monitor</a></li>
                    <li><a href="SecurityIssueReport.jsp">Report Security Vulnerabilities</a></li>
                </ul>
            </li>
        </ul>
        <div class="start">
        <form action ="StaffManage.jsp" method="post">
            <select name="table">
                <option value="0">-Please Select Identity-</option>
                <option value="1">Trading Company Staff</option>
                <option value="2">Sales Manager</option>
                <option value="3">Database Administrator</option>
                <option value="4">Safety Specialist</option>
                <option value="5">Data Analyst</option>
            </select>
            <input type="submit" value="Search">
        </form>
        </div>
        <%
            String table = request.getParameter("table");
        %>
        <%  Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            if (table == null || Integer.parseInt(table) == 0 || Integer.parseInt(table) == 1) {
        %>
        <table class="table" border="1" width="80%" align="center">
            <tr>
                <th>Serial Number</th>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Position</th>
                <th>Operation</th>
            </tr>
            <% } else {
            %>
            <table class="table" border="1" width="80%" align="center">
                <tr>
                    <th>Serial Number</th>
                        <%
                            if (Integer.parseInt(table) == 2) {
                        %>
                    <th>Manager ID</th>
                        <%
                        } else if (Integer.parseInt(table) == 3) {
                        %>
                    <th>Admin ID</th>
                        <%
                        } else if (Integer.parseInt(table) == 4) {
                        %>
                    <th>Safety ID</th>
                        <%
                        } else if (Integer.parseInt(table) == 5) {
                        %>
                    <th>Analyst ID</th>
                        <%
                            }
                        %>
                    <th>Staff ID</th>
                    <th>Name</th>
                    <th>Password</th>
                    <th>Operation</th>
                </tr>
                <%
                    }
                %>
                <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecas", "root", "Ww19991017");

                        if (table == null || Integer.parseInt(table) == 0 || Integer.parseInt(table) == 1) {
                            String sql = "select * from tradingcompanystaff";
                            ps = conn.prepareStatement(sql);
                        } else if (Integer.parseInt(table) == 2) {
                            String sql = "select * from salesmanager";
                            ps = conn.prepareStatement(sql);
                        } else if (Integer.parseInt(table) == 3) {
                            String sql = "select * from databaseadministrator";
                            ps = conn.prepareStatement(sql);
                        } else if (Integer.parseInt(table) == 4) {
                            String sql = "select * from safetyspecialist";
                            ps = conn.prepareStatement(sql);
                        } else if (Integer.parseInt(table) == 5) {
                            String sql = "select * from dataanalyst";
                            ps = conn.prepareStatement(sql);
                        }

                        rs = ps.executeQuery();

                        int i = 0;
                        while (rs.next()) {
                %>
                <%
                    if (table == null || Integer.parseInt(table) == 0 || Integer.parseInt(table) == 1) {
                %>   
                <tr align="center">
                    <td><%out.print(++i);%></td>
                    <td><%=rs.getString("StaffNo")%></td>
                    <td><%=rs.getString("StaffName")%></td>
                    <td><%=rs.getString("StaffAge")%></td>
                    <td><%=rs.getString("StaffGender")%></td>
                    <td><%=rs.getString("StaffPosition")%></td>
                    <td><a href="StaffDeleteConfirm.jsp?staffNo=<%=rs.getString("StaffNo")%>">Delete</a>
                    </td>
                </tr>
                <%
                } else if (Integer.parseInt(table) == 2) {
                %>
                <tr align="center">
                    <td><%out.print(++i);%></td>
                    <td><%=rs.getString("ManagerNo")%></td>
                    <td><%=rs.getString("StaffNo")%></td>
                    <td><%=rs.getString("ManagerName")%></td>
                    <td><%=rs.getString("ManagerPassword")%></td>
                    <td><a href="SMUpdate.jsp?mNo=<%=rs.getString("ManagerNo")%>">Update</a>
                    </td>
                </tr>
                <%
                } else if (Integer.parseInt(table) == 3) {
                %>
                <tr align="center">
                    <td><%out.print(++i);%></td>
                    <td><%=rs.getString("AdminNo")%></td>
                    <td><%=rs.getString("StaffNo")%></td>
                    <td><%=rs.getString("AdminName")%></td>
                    <td><%=rs.getString("AdminPassword")%></td>
                    <td><a href="DBAUpdate.jsp?adminNo=<%=rs.getString("AdminNo")%>">Update</a>
                    </td>
                </tr>
                <%
                } else if (Integer.parseInt(table) == 4) {
                %>
                <tr align="center">
                    <td><%out.print(++i);%></td>
                    <td><%=rs.getString("SafetyNo")%></td>
                    <td><%=rs.getString("StaffNo")%></td>
                    <td><%=rs.getString("SafetyName")%></td>
                    <td><%=rs.getString("SafetyPassword")%></td>
                    <td><a href="SSUpdate.jsp?safeNo=<%=rs.getString("SafetyNo")%>">Update</a>
                    </td>
                </tr>
                <%
                } else if (Integer.parseInt(table) == 5) {
                %>
                <tr align="center">
                    <td><%out.print(++i);%></td>
                    <td><%=rs.getString("AnalystNo")%></td>
                    <td><%=rs.getString("StaffNo")%></td>
                    <td><%=rs.getString("AnalystName")%></td>
                    <td><%=rs.getString("AnalystPassword")%></td>
                    <td><a href="DAUpdate.jsp?anaNo=<%=rs.getString("AnalystNo")%>">Update</a>
                    </td>
                </tr>
                <%
                    }
                %>
                <%
                        }

                    } catch (Exception e) {
                        System.out.println(e);
                    } finally {
                        try {
                            rs.close();
                            ps.close();
                            conn.close();
                        } catch (Exception e) {
                            System.out.println(e);
                        }
                    }
                %>
            </table>
            <% if(table == null || Integer.parseInt(table) == 0 || Integer.parseInt(table) == 1){
             %>
         <div class="end">
        <form action="StaffAdd.jsp">
            <input type="submit" value="Add New Staff">
        </form>
         </div>
            <% }else if(Integer.parseInt(table) == 2){
             %>
         <div class="end">
        <form action="SMAdd.jsp">
            <input type="submit" value="Add New Manager">
        </form>
         </div>
            <% }else if(Integer.parseInt(table) == 3){
             %>
         <div class="end">
        <form action="DBAAdd.jsp">
            <input type="submit" value="Add New Admin">
        </form>
         </div>
            <% }else if(Integer.parseInt(table) == 4){
             %>
        <div class="end">
        <form action="SSAdd.jsp">
            <input type="submit" value="Add New Speciallist">
        </form>
         </div>
            <% }else if(Integer.parseInt(table) == 5){
             %>
         <div class="end">
        <form action="DAAdd.jsp">
            <input type="submit" value="Add New Analyst">
        </form>
        </div>
            <% } 
            %>
    </body>
</html>
