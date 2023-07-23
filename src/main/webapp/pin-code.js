function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + " мин " + seconds + " сек";

        if (--timer < 0) {
            window.location.href = "result.jsp?step=405";
        }
    }, 1000);
}

window.onload = function () {
    var thirtySeconds = 30,
        display = document.querySelector('#timer');
    startTimer(thirtySeconds, display);
};
