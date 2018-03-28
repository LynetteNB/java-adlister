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
<h1 style="text-align: center">Guess a Random Number</h1>
<img style="display: block; margin: auto" src="https://cdn.crunchify.com/wp-content/uploads/2013/05/randomnumber-crunchify.png" alt="">
<form action="/guess" method="POST" style="text-align: center">
    <label> Pick a number between 1 & 100:
        <input type="text" name="num">
    </label>
</form>
</body>
</html>
