<%@ page import="java.nio.channels.FileLock" %><%--
  Created by IntelliJ IDEA.
  User: aya
  Date: 20/05/2019
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="content">
    <%
        String des = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float percent = Float.parseFloat(request.getParameter("discount_percent"));
        float amount = (price*percent)/100;
        float discountPrice = price - amount;
    %>
    <h1>Product Discount Calculator</h1>
    <label>Product Description: </label><%=des%><br/>$
    <label>Price: </label><%=price%><br/>
    <label>Discount Percent: </label><%=percent%>%<br>
    <label>Discount Amount: </label><%=amount%>$<br>
    <label>Discount Price: </label><%=discountPrice%>$<br>
</div>
</body>
</html>