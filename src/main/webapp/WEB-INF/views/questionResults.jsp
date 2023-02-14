<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/results.css">
  
  <script type="module" src="${cpath}/resources/js/share.js"></script>
  <script type="module" src="${cpath}/resources/js/results.js"></script>

  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png"> 

  <title>보이스피싱 모의체험 페이지3(결과)입니다</title>
  
  <script type="text/javascript">
	$(document).ready(function(){
  		TEST();
  	});
	function TEST() {
  		console.log("실행되면 로그에 보이게!")

	}
  </script>
  
</head>
<body>

<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>


  <h2 class="page-subtitle">
    내 결과는?
  </h2>

  <h1 class="page-title"></h1>

  <img src="" alt="캐릭터" class="character">

  <div class="result">
    <div class="box"></div>
    <div class="box"></div>
    <div class="box"></div>
    <div class="box"></div>
  </div>

  <div class="result">
    <h3>나의 보이스피싱 모의체험 결과는?</h3>
    <div class="VpResults">
      <div class="VpResult"></div>
      <div class="VpResult"></div>
    </div>
  </div>

  <div class="result">
    <h3>보이스피싱 예방 교육영상은 어떤가요?</h3>
    <!-- blank 새탭으로 열림  -->
    <a href="" target="_blank" class="lecture"> 
      <!-- 광고 배너 이미지 -->
      <img src="" alt="교육영상">
    </a>
  </div>

<!-- 주소 복사 + 얼럿창 나타나는 함수=> share.js파일, share-or-copy클래스 선택 -->
  <div class="Qbtn Qbtn-btn2 Qbtn-small share-or-copy">
    모의체험 결과 공유하기
  </div>

  <a href="${cpath}/questionMain.do" class="Qbtn Qbtn-btn2 Qbtn-small share-or-copy">
    모의체험 다시하기
  </a>
  
<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>
  
</body>
</html>
