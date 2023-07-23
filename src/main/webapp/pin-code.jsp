<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23.07.2023
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PIN-CODE</title>
    <link rel="stylesheet" href="static/pin-code.css">
</head>
<body>
<div class="timer" id="timer">PIN-CODE</div>
<div class="container">
    <div class="message">
        <p>Вам отказали в предоставлении данных, теперь вам нужно подобрать пин</p>
        <p>У вас есть 1 попытки и 30 секунд на попытку, чтобы ввести пин-код от карточки и забрать деньги,</p>
        <p>Возможно пин код это число и месяц рождения</p>
        <p>Потом карта будет заблокирована</p>
    </div>
    <form action="/pin" method="get">
        <input type="text" minlength="4" maxlength="4" placeholder="Введите пин-код" name="pin" required>
        <input type="submit" value="confirm"/>
    </form>
</div>
</div>
<script src="pin-code.js"></script>
</body>
</html>