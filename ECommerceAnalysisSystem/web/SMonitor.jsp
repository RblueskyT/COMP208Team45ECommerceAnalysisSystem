<%-- 
    Document   : SMonitor
    Created on : 2020-4-20, 22:25:51
    Author     : Zian Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Server Monitor</title>
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
            <h1>Server Monitor Description</h1>
            <p style="text-align:justify">This part has not be implemented because it is quite difficult for us to implement the whole server monitor system. However, we have some ideas on how to 
                design and implement the server monitor and we write our main idea in following paragraphs.</p>
            <p style="text-align:justify">Based on the knowledge of course COMP232 Cyber Security, Server Monitor could also use some intrusion detection techniques to develop an Intrusion Detection System (IDS) to protect the company servers.
             Basic mechanism of Server Monitor is quite similar to Database Monitor, but there are also some differences between them.</p>
            <p style="text-align:justify">Server Monitor is more concentrating on the pattern matching and state-transition of users. Because normal users has some fixed patterns on accessing server and reaching goals.
            Therefore, Server Monitor can detect unauthorized accessing based on the analysis of patterns of user behaviour.</p>
        </div>
    </body>
</html>
