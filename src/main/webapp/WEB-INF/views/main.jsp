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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">	
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <script type="module" src="${cpath}/resources/js/share.js"></script>
  <script type="module" src="${cpath}/resources/js/questions.js"></script>
  
  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  <title>메인페이지 입니다</title>

  
</head>
<body>


<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

<br><br>

<div class="row" style="display:flex; justify-content: center; align-items: center;">
	<div class="col-lg-10" style="display: flex; justify-content: center; align-items: center;">
	  <div class="container" style="width:50%;">
	    <img src="./resources/images/VP피해현황1.jpg" class="img-responsive" alt="피싱 피해 현황" width="300" height="100"> 
	  </div>
	  <br>
	  <div class="container" style="width:50%;">
	    <img src="./resources/images/VP피해현황1.jpg" class="img-responsive" alt="피싱 피해 현황" width="300" height="100"> 
	  </div>	
	</div>
</div>

<br><br><br><br>

<div class="row" style="display:flex; justify-content: center; align-items: center;">
  <div class="col-lg-10" style="display: flex; justify-content: center; align-items: center;">
    <br><br><br><br>
	<div class="container">
		<br>
		<a href="${cpath}/questionMain.do" class="Qbtn Qbtn-btn1">VP모의체험</a>
		<br><br>
	</div>
	<br><br>
	<div class="container">
		<br>
		<a href="${cpath}/sub.do" class="Qbtn Qbtn-btn1">VP확률검사</a>
		<br><br>
	</div>
	<br><br>
	<div class="container">
		<br>
		<a href="${cpath}/CmBoard.do" class="Qbtn Qbtn-btn1">금융커뮤니티</a>
		<br><br>
	</div>
	<br><br><br><br>
  </div>
</div>

<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

</body>
</html>
