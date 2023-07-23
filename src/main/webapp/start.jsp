<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="static/start.css" rel="stylesheet">
    <title>START</title>
</head>
<body>
<div class="clearfix">
    <div class="left-sectionTEXT">
        <h1>Добро пожаловать в квест "Get the Money"!</h1>
        <p>Сегодня вы станете мошенником, представляющим "Emerald Bank"</p>
        <h3 class="green-text">Пожалуйста, напишите ваше имя:</h3>
    </div>
    <div class="right-sectionFORM">
        <form action="/init" method="get">
            <input type="text" id="name" name="name" required>
            <input type="submit" value="Начать">
        </form>
    </div>
</div>
</body>
</html>
