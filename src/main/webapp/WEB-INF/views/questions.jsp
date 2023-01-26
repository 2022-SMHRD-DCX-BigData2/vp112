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
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/questions.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script type="module" src="${cpath}/resources/js/questions.js"></script>
     
  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>보이스피싱 모의체험 페이지2(질문)입니다</title>
  
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


  <div class="progress"> <!-- 질문 클릭시 색 채워지는-->
    <div class="value"></div>
  </div>
  
  <div class="question-box">
    <div class="number"></div>
    <div class="question"></div>
    <div class="Qbtn Qbtn-btn3 choice choice1"></div>
    <div class="Qbtn Qbtn-btn3 choice choice2"></div>
  </div>




<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>


  
</body>
</html>
