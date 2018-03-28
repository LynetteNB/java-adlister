<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lynette
  Date: 3/28/18
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<jsp:include page="/WEB-INF/partials/head.jsp"/>
    <title>Ads</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <c:forEach var="ad" items="${ads}">
        <div>
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</body>
</html>
