import { results, AnswersResults } from './data.js'

console.log("results.js 실행됨")

const AnswersResult = new URLSearchParams(location.search).get('AnswersResult')
//console.log(AnswersResult)

const result = results[AnswersResults[AnswersResult]]

// 결과 출력할 각 요소 칮기
const titleEl = document.querySelector('.page-title')
const characterEl = document.querySelector('.character')
const boxEls = document.querySelectorAll('.box')
const VpResultEls = document.querySelectorAll('.VpResult')
const lectureEl = document.querySelector('.lecture')
const lectureImgEl = document.querySelector('.lecture img')

// 모의체험 결과값 채우기
titleEl.innerHTML = result.title
characterEl.src = result.character
boxEls.forEach(function (boxEl, index) {
  boxEl.innerHTML = result.results[index]
})

//나의 보이스피싱 모의체험 결과는?
VpResultEls.forEach(function (VpResultEl, index) {
  VpResultEl.innerHTML = result.VpResults[index]
})

//결과이미지 URL, 이미지 경로
lectureEl.href = result.lectureUrl
lectureImgEl.src = result.lectureImg
