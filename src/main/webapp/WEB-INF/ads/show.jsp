<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Showing Chosen Ad</title>
</head>
<style>
    body {
        text-align: center;
    }
    div {
        width: 70%;
        margin: 0 auto;
    }
</style>
<body>
<div>
    <h1>${ad.title}</h1>
    <hr>
    <p>${ad.description}</p>
</div>
</body>
</html>
