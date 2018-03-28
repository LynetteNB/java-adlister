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
    <style>
        .adsToDisplay{
            display: flex;
            justify-content: center;
        }
        .adDisplay {
            height: 250px;
            width: 250px;
            margin: 20px;
            border: 1px solid dimgray;
            border-radius: 5px;
            padding: 10px;
            box-shadow: -5px 5px 10px dimgray;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="adsToDisplay">
    <c:forEach var="ad" items="${ads}">
        <div class = "adDisplay">
            <h3>${ad.title}</h3>
            <hr>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
