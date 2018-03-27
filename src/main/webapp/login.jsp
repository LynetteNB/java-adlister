<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@include file="partials/head.jsp"%>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<c:if test="${param.username != null && param.username.equals(\"admin\") && param.password != null && param.password.equals(\"password\")}">
    <c:redirect url="profile.jsp"/>
</c:if>

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
