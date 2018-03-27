<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lynette
  Date: 3/27/18
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! String username; %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<%
    username = request.getParameter("username");
    if(username != null && username.equals("admin")){
        response.sendRedirect("profile.jsp");
    }
%>
<form method="POST" action="login.jsp">
    <label>
        Username: <input type="text" name="username">
    </label>
    <label>
        Password: <input type="password" name="password">
    </label>
    <input type="submit">
</form>

</body>
</html>
