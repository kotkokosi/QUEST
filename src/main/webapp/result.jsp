<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAIL</title>
    <link href="static/result.css" rel="stylesheet">
</head>
<body>

<c:choose>
    <c:when test="${step eq 400}">
        <div class="message"><p>Увы, ты проиграл(а)!😔😢😭</p>
            <p>Не расстраивайся, у тебя все получится на следующий раз, но ты посмотришь YouTube!</p>
        </div>
    </c:when>
    <c:when test="${step eq 401}">
        <div class="message"><p>Увы, ты проиграл(а)!😔😢😭</p>
            <p>Повысить тон в разговоре было не правильным решением</p>
        </div>
    </c:when>
    <c:when test="${step eq 402}">
        <div class="message"><p>Увы, ты проиграл(а)!😔😢😭</p>
            <p>Номер друга оказался неверным</p>
        </div>
    </c:when>
    <c:when test="${step eq 403}">
        <div class="message"><p>Увы, ты проиграл(а)!😔😢😭</p>
            <p>После этого сразу кинули трубку</p>
        </div>
    </c:when>
    <c:when test="${step eq 404}">
        <div class="message"><p>Увы, ты проиграл(а)!😔😢😭</p>
            <p>Пин-код оказался неверным</p>
        </div>
    </c:when>
    <c:when test="${step eq 405}">
        <div class="message"><p>Увы, ты проиграл(а)!😔😢😭</p>
            <p>Время истекло</p>
        </div>
    </c:when>
    <c:when test="${step eq 200}">
        <div class="message">
            <p>Ура, ты выиграл(а)!😄🎉🌈</p>
        </div>
    </c:when>
</c:choose>
<form action="/rest" method="get">
    <button class="play-again-btn">Сыграть еще раз</button>
</form>
</body>
</html>
