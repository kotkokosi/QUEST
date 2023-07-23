<%@ page import="com.example.jfi.classes.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>STORY</title>
    <link href="static/story.css" rel="stylesheet">
</head>
<body>
<c:choose>
    <c:when test="${empty step}">
        <p class="text"><%= ((User) request.getSession().getAttribute("user")).getName() %>,
            у тебя в руках телефон ты стоишь перед серьезным решением.</p>
        <p class="text">у тебя есть два варианта - открыть YouTube или позвонить и начать историю.</p>
        <p class="text">Какой путь ты выберешь?</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="1">Позвонить</button>
                <button class="ui-button" name="choice" value="400">Открыть YouTube</button>
            </form>
        </div>
    </c:when>
    <c:when test="${step eq 1}">
        <p class="text-b">- Здравствуйте, это представитель банка Emerald Bank.</p>
        <p class="text-b">У нас возник сбой в системе, и мы требуем вашу помощь. </p>
        <p class="text-b">Ваша карточка была затронута. Нам нужны данные, чтобы исправить ситуацию.</p>
        <p class="text-a">- Подождите, я не совсем понимаю, что происходит.</p>
        <p class="text-a"> Какой сбой? Я хочу убедиться, что вы действительно представитель банка.</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="2">Далее</button>
            </form>
        </div>
    </c:when>
    <c:when test="${step eq 2}">
        <p class="text">Вам не сильно доверяют что ты выбирешь?</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="3">Попробуй убедить собеседника в сбое</button>
                <button class="ui-button" name="choice" value="401">Повысить тон в разговоре</button>
            </form>
        </div>
    </c:when>
    <c:when test="${step eq 3}">
        <p class="text-b">- Я понимаю ваше беспокойство, но это срочно! </p>
        <p class="text-b">Ваша карточка может быть скомпрометирована. </p>
        <p class="text-b">Пожалуйста, скажите свои данные, чтобы мы могли защитить ваш счет.</p>
        <p class="text-a">- Я бы хотел(а) связаться с банком напрямую, чтобы подтвердить эту информацию.</p>
        <p class="text-a"> Вы можете предоставить мне номер для обратной связи?</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="4">Далее</button>
            </form>
        </div>
    </c:when>
    <c:when test="${step eq 4}">
        <p class="text">"Вы можете предоставить мне номер для обратной связи?"</p>
        <p class="text">Ответьте на вопрос:</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="402">Дать номер друга</button>
                <button class="ui-button" name="choice" value="5">Придумать причину отказа</button>
            </form>
        </div>
    </c:when>
    <c:when test="${step eq 5}">
        <p class="text-b">- К сожалению, из-за сбоя у нас временно нет возможности предоставить вам номер. </p>
        <p class="text-b"> Но поверьте, это правда, и мы заботимся о вашей безопасности.</p>
        <p class="text-a">- Хорошо, что мне нужно делать?</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="6">Далее</button>
            </form>
        </div>
    </c:when>
    <c:when test="${step eq 6}">
        <p class="text"></p>
        <p class="text">Выбери следующие действие</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="7">Начать спрашивать о карте</button>
                <button class="ui-button" name="choice" value="403">Попросить сделать перевод на карту</button>
            </form>
        </div>
    </c:when>
    <c:when test="${step eq 7}">
        <p class="text-b">- Спасибо, что согласились помочь нам. </p>
        <p class="text-b"> Для вашей безопасности, пожалуйста, назовите свою фамилию, имя, </p>
        <p class="text-b"> дату рождения и номер вашей карточки.</p>
        <p class="text-a">- Хорошо, я вас поняла. Меня зовут Анастасия, дата рождения 09.08.2000,</p>
        <p class="text-a">а номер моей карточки 2349 4839 4578 7598 и дата ее важности 09/28.</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="8">Далее</button>
            </form>
        </div>
    </c:when>
    <c:when test="${step eq 8}">
    <p class="text"></p>
    <p class="text">Выбери следующие действие</p>
    <div class="button-group">
        <form action="/quest" method="get">
            <button class="ui-button" name="choice" value="9">Спросить о пин-коде</button>
            <button class="ui-button" name="choice" value="9">Спросить о секретном слове</button>
        </form>
    </div>
    </c:when>
    <c:when test="${step eq 9}">
        <p class="text-a">- Это очень подозрительно что вы спрашиваете данную информация</p>
        <p class="text-a">До свидания</p>
        <div class="button-group">
            <form action="/quest" method="get">
                <button class="ui-button" name="choice" value="10">Далее</button>
            </form>
        </div>
    </c:when>
</c:choose>
<div class="statistic">
    <p>Statistic:</p>
    <p>IP ADDRESS: <%= ((User) request.getSession().getAttribute("user")).getIp() %>
    </p>
    <p>GAMES NAME: <%= ((User) request.getSession().getAttribute("user")).getName() %>
    </p>
    <p>COUNT OF GAME: <%= ((User) request.getSession().getAttribute("user")).getCountGame() %>
    </p>
</div>
</body>
</html>