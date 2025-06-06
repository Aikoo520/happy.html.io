<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Здоровье: тест-привычки</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f9f9f9;
      text-align: center;
      padding: 20px;
    }
    .question {
      margin-bottom: 20px;
      font-size: 18px;
    }
    button {
      padding: 10px 20px;
      margin: 10px;
      font-size: 16px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      background-color: #6477EB;
      color: white;
    }
    #result {
      font-size: 20px;
      font-weight: bold;
      margin-top: 30px;
    }
    .advice {
      margin-top: 10px;
      font-size: 16px;
      color: #444;
      text-align: left;
      max-width: 600px;
      margin-left: auto;
      margin-right: auto;
    }
  </style>
</head>
<body>

  <h1>Проверь свои привычки</h1>

  <div id="quiz"></div>
  <div id="result"></div>
  <div class="advice" id="advice"></div>

  <script>
    const questions = [
      {
        text: "Вы пьете больше двух чашек кофе в день?",
        advice: "Надо пить меньше и утро начинать с завтрака, а после — кофе"
      },
      {
        text: "Вы добавляете к чаю сахар?",
        advice: "Старайтесь не добавлять сахар"
      },
      {
        text: "Вы кушаете капусту, огурцы и помидоры без уксуса или ферментированные продукты?",
        advice: "Молодец!"
      },
      {
        text: "Вы завтракаете?",
        advice: "Класс!"
      },
      {
        text: "Вы спите меньше 6 часов?",
        advice: "Нужно спать хотя бы 6 часов"
      },
      {
        text: "Вы не ходите дома босиком?",
        advice: "Знай: ходьба босиком закаляет тело"
      },
      {
        text: "У вас нет перерывов во время работы?",
        advice: "Надо делать перерыв 10–15 минут"
      },
      {
        text: "Вы не занимаетесь спортом?",
        advice: "Надо хотя бы один раз в неделю заниматься спортом"
      }
    ];

    let current = 0;
    let yesCount = 0;
    let userAnswers = [];

    const quizDiv = document.getElementById("quiz");
    const resultDiv = document.getElementById("result");
    const adviceDiv = document.getElementById("advice");

    function showQuestion() {
      if (current >= questions.length) {
        showResult();
        return;
      }
      const q = questions[current];
      quizDiv.innerHTML = `
        <div class="question">${q.text}</div>
        <button onclick="answer('yes')">Да</button>
        <button onclick="answer('no')">Нет</button>
      `;
    }

    function answer(ans) {
      if (ans === 'yes') yesCount++;
      userAnswers.push({ answer: ans, advice: questions[current].advice });
      current++;
      showQuestion();
    }

    function showResult() {
      quizDiv.innerHTML = "";
      let resultText = "";
      if (yesCount <= 3) {
        resultText = "✅ Все ок! Продолжай в том же духе.";
      } else if (yesCount === 4) {
        resultText = "⚠️ Надо начать исправляться!";
      } else {
        resultText = "🚨 Бей тревогу! Пора менять привычки!";
      }
      resultDiv.innerText = resultText;

      const advices = userAnswers
        .filter(ans => ans.answer === 'yes')
        .map(ans => `<div>✔️ ${ans.advice}</div>`) 
        .join('');
      adviceDiv.innerHTML = `<h3>Рекомендации:</h3>${advices}`;
    }

    showQuestion();
  </script>
</body>
</html>
