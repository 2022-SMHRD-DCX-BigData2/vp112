	
import { questions } from './data.js'

console.log("questions.js 실행됨")

// 질문 각요소 찾기
const progressValueEl = document.querySelector('.progress .value')
const numberEl = document.querySelector('.number')
const questionEl = document.querySelector('.question')
const choice1El = document.querySelector('.choice1')
const choice2El = document.querySelector('.choice2')

let currentNumber = 0 // 현재 질문 번호
let AnswersResult = '' // 질문 답변결과

// 화면 질문을 랜더링
function renderQuestion() {
  const question = questions[currentNumber]
  questionEl.innerHTML = question.question
  numberEl.innerHTML = question.number
  choice1El.innerHTML = question.choices[0].text
  choice2El.innerHTML = question.choices[1].text
  progressValueEl.style.width = (currentNumber + 1) * 20 + '%'  // 질문 클릭시 색 채워지는 비율
}
// 다음 질문
function nextQuestion(choiceNumber) {
  // 더 이상 질문이 없으면, 결과 페이지 보여주기
  if (currentNumber === questions.length - 1) {
    showResultPage()
    return
  }
  const question = questions[currentNumber]
  AnswersResult = AnswersResult + question.choices[choiceNumber].value
  currentNumber = currentNumber + 1
  renderQuestion()
}

// 결과 페이지 이동
function showResultPage() {
	location.href = '/smhrd/questionResults.do?AnswersResult=' + AnswersResult;
			
}


// '답변1' 혹은 '답변2'를 클릭했을 때 동작하는 코드
choice1El.addEventListener('click', function () {
  nextQuestion(0)
})
choice2El.addEventListener('click', function () {
  nextQuestion(1)
})

// 첫 번째 질문 함수 실행
renderQuestion()
