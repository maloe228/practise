// Функция для показа скрытого блока
function showHiddenBlock() {
    document.getElementById('hidden-block').style.display = 'block';
}

// Функция для скрытия скрытого блока
function hideHiddenBlock() {
    document.getElementById('hidden-block').style.display = 'none';
}

// Функция для проверки ответа
function checkAnswer() {
    const userAnswer = document.getElementById('city-input').value.trim().toLowerCase();
    if (userAnswer === "сортавала") {
        alert("Правильно!");
    }
    else {
        alert("Неправильно.");
    }
}