<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
    <title>Ads</title>
    <style>
        .adsToDisplay{
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
            float: left;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<form action="/ads" method="POST">
    <label>Ad Title:
        <input type="text" name="title">
    </label>
    <label>Ad Description:
        <input type="text" name="description">
    </label>
    <button>Submit</button>
</form>
<div class="adsToDisplay">
    <c:forEach var="ad" items="${ads}">
        <div class = "adDisplay">
            <h3>${ad.title}</h3>
            <hr>
            <p>${ad.description}</p>
            <a href="/ads/show?id=${ad.id}">More Details</a>
        </div>
    </c:forEach>
</div>

</body>
</html>
