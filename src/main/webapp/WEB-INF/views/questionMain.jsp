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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  
  <script type="module" src="${cpath}/resources/js/questions.js"></script>
   
   <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>보이스피싱 모의체험 페이지(메인)1입니다</title>
  
</head>
<body>

<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>


<div class="sub">	 

  <h2 class="page-subtitle">
	    스마트인재개발원<br>
	  Final Project
  </h2>

  <h1 class="page-title">
	    보이스 피싱<br>
	    모의체험하기
  </h1>

  <img src="${cpath}/resources/images/main_character.png" alt="휴대폰 이미지" class="character">
   
  <a href="${cpath}/questions.do" class="Qbtn Qbtn-btn1">
	    모의체험 하기
  </a>
  <div class="Qbtn Qbtn-btn2 Qbtn-small share-or-copy">
    	모의체험 링크 공유하기
  </div>
</div>


<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>




  
</body>
</html>
