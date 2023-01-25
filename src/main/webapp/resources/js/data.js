// 질문 데이터
export const questions = [
  {
    number: '01',
    question: 'ooo검찰청 수사기관(사칭)입니다. ooo고객님 맞으신가요?',
    choices: [
      { text: '무슨일인가요?', value: 'x' },
      { text: '무슨일인가요?', value: 'o' },
    ]
  },
  {
    number: '02',
    question: '귀하의 통장이 불법명의도용 범죄에 사용 되었는데 전혀 모르고 있었나요?',
    choices: [
      { text: '진짜요 그럼 저도 처벌 받는건가요<br>(무서워요ㅜㅜ)', value: 'x' },
      { text: '전 그런적이 없어요 누가 그랬나요<br>(무서워요ㅜㅜ)', value: 'o' }
    ]
  },
  {
    number: '03',
    question: '범인은 체포되었으나 귀하의 통장은 금감원에서 동결예정에 있어, 동결전 도움 드리고자 연락드렸습니다.',
    choices: [
      { text: '제가 어떻게 해야 되는가요', value: 'x' },
      { text: '확인을 해보고 연락 드릴께요', value: 'o' }
    ]
  },
  {
    number: '04',
    question: '지금 상황이 급하기 때문에 우선 통장에 있는 돈은 모두 빼야 됩니다.',
    choices: [
      { text: '현금을 찾는다', value: 'x' },
      { text: '언제까지 찾아야되는가요?.', value: 'o' }
    ]
  },
  {
    number: '05',
    question: '곧 수사관이 방문할테니 서둘러 현금을 찾으세요',
    choices: [
      { text: '현금을 가지고 나간다', value: '' },
      { text: '경찰에 신고한다', value: '' }
    ]
  },
]

		
//질문에 대한 결과 데이터 0, 1
export const results = [
  {
    title: '바람결에 이리저리 흔들리는<br>갈대형!',
    character: './resources/images/result_character1.png',
    results: [ //총 4개의 결과가 있음
      '"누르고, 받고, 알려주고"',
      '달콤한 유혹에 아무런 의심이 없네요.',
      '대가 없는 혜택은 없습니다!',
      '세상에 공짜는 없다는 점 기억해주세요!'
    ],
    VpResults: ['갈대형♬', '대나무형'],
    //배너 이미지
    lectureImg: './resources/images/result_lecture4.png',
    //배너 링크
    lectureUrl: 'https://www.dgpolice.go.kr/dgpo/bbs/view.do?bbsId=vocpr200207&num=36'
  },
  {
    title: '굽히지 않고 푸르른<br>대나무형',
    character: './resources/images/result_character2.png',
    results: [
      '철두철미한 당신!!<br>그 어떤 달콤한 유혹이 눈앞에 있어도',
      '항상 의심 하고 조심하고 또 조심하네요.',
      '지금처럼 주의를 기울이는 습관이',
      '몸에 배어 있다면 당신은 금융사기로부터<br>안전할 수 있습니다.'
    ],
    VpResults: ['갈대형', '대나무형♬'],
    lectureImg: './resources/images/result_lecture3.png',
    lectureUrl: 'https://www.ebs.co.kr/tv/show?prodId=135339&lectId=60038104'
  }
]


//결과 0, 1
export const AnswersResults = {
  //갈대형
  ooox : 0,
  ooxx : 0,
  xoxx : 0,
  xxox : 0,
  oxxx : 0,
  xxxx : 0,
  xoox : 0,
  oxox : 0,

  //대나무형 = 마지막 질문 index 1 선택한 경우 
  oooo : 1,
  oxoo : 1,
  ooxo : 1,
  xxoo : 1,
  oxxo : 1,
  xxxo : 1,
  xoxo : 1
}


