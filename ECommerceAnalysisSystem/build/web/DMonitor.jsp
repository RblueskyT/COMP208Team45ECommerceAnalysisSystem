<%-- 
    Document   : DMonitor
    Created on : 2020-4-20, 22:25:42
    Author     : Zian Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database Monitor</title>
        <link href='othertextreadstyle.css' rel='stylesheet'>
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
        <div class="textread">
            <h1>Database Monitor Description</h1>
            <p style="text-align:justify">This part has not be implemented because it is quite difficult for us to implement the whole database monitor system. However, we have some ideas on how to 
            design and implement the database monitor and we write our main idea in following paragraphs.</p>
            <p style="text-align:justify">Based on the knowledge of course COMP232 Cyber Security, Database Monitor could use some intrusion detection techniques to protect the database. For example, Rule-based and signature
            techniques could be used to protect the database. Because of there are some rules on user authentication and data operations in this system, we can design the database monitor based on these rules and 
            then we can detect unauthorized operations which are violating the rules.</p>
            <p style="text-align:justify">Logging of database operation can be very important in Database Monitor. Every user's operation on the database will be classified and displayed on Database Monitor in real time,
            then safety specialist can make responses based on the information displayed on Database Monitor and his/her own knowledge.</p>
         </div>
    </body>
</html>
