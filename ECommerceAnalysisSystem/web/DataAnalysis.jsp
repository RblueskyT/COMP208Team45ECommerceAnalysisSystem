<%-- 
    Document   : DataAnalysis
    Created on : 2020-4-21, 7:31:00
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Analysis Tool</title>
        <link href='othertextreadstyle.css' rel='stylesheet'>
    </head>
    <body>
        <ul>    
            <li><a>System Options</a>
                <ul>
                    <li><a href="DAInterface.jsp">Data Analyst Home</a></li>
                    <li><a href="UserLogout.jsp">Logout</a></li>
                </ul>
            </li>

            <li><a href="DataAnalysis.jsp">Data Analysis Tool</a>
            </li>

            <li><a href='ReportManage.jsp'>Sales Reports Management</a>
            </li>
        </ul>
        <div class="textread">
            <h1>Data Analysis Tool Description</h1>
            <p style="text-align:justify">This function has not been implemented because our team members developed a prediction model with python but we don't know how to 
            combine Java WEB Application with python. Therefore, we write our main ideas in following paragraphs and you can find more details in user manuals. If you want to read
            the sourse code, you can find a github link in "System Introduction" and all the sources (whole web application code, prediction model code and user manuals)
            are revealed there.</p>
            <p style="text-align:justify">The main idea of data analysis tool is to give some prediction charts of commodity sales or even automatically generate some sales analysis reports for data analyst after they
            setting some constraints. The prediction model developed by our team members is based on this idea.</p>
            <p style="text-align:justify">Our team members implemented the prediction model through three steps. Firstly, create a new MySQL database and then create two tables, 
                one is "record" and the other is "estimate". Table "record" is used to store the daily sales of a commodity over a historical period and table "estimate" is used to store
            the predictions of sales trend of in at least the next seven days (results are shown as predictions of daily sales in next few days). Secondly, create a python 
            file named as "dataGenerator" to generate some simulated data and write into Table "record". Because we can't find massive sales data to train the prediction model, we can only simulate it.
            Finally, create a python file named as "dataAnalyst" which is a neural network (very simple one, only has four layers). This is our prediction model and we trained it
            with simulated data and then let this model write predictions into Table "estimate", also we let it plot a trend chart.</p>
        </div>
    </body>
</html>
