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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  
  <script type="module" src="${cpath}/resources/js/share.js"></script>
  <script type="module" src="${cpath}/resources/js/questions.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   
   <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>보이스피싱 모의체험 페이지(메인)1입니다</title>
  
</head>
<body style="margin-bottom: 5%;">

<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>
<br>
<h1 class="page-title">
   모의체험하기
</h1>
<br>
<div class="sub" style="margin-top: 0;">	 
  <br>
  <h2 class="page-subtitle">
	    스마트인재개발원
  </h2>
  <br><br><br>


  <img src="${cpath}/resources/images/main_character.png" alt="휴대폰 이미지" class="character">
   
  <a href="${cpath}/questions.do" class="Qbtn Qbtn-btn1">
	    모의체험 하기
  </a>
  <div class="Qbtn Qbtn-btn1 share-or-copy">
      <a>링크 공유하기</a>
  </div>
</div>


<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>




  
</body>
</html>
