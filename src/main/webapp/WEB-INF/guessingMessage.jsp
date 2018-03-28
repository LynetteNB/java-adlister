<%--
  Created by IntelliJ IDEA.
  User: lynette
  Date: 3/28/18
  Time: 10:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess A Number</title>
</head>
<body>
<h1>${message}</h1>
<form action="/guess">
    <input type="submit" value="Guess Again?">
    <input type="submit" value="Reset Random Number?" name="reset">
</form>
</body>
</html>
