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
    <%@include file="partials/head.jsp"%>
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
    <div class="form-group">
        <label>Username:
            <input type="text" class="form-control" name="username" placeholder="Username">
        </label>
    </div>
    <div class="form-group">
        <label>Password
            <input type="password" class="form-control" name="password" placeholder="Password">
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<%@include file="partials/foot.jsp"%>
</body>
</html>
