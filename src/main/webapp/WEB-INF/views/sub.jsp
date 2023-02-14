<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" style="height:100%; margin-bottom: 5%;">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  

  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>피해예방수칙</title>

</head>
<body style="margin-bottom: 5%;">
<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>
<br>
<h1 class="page-title">피해예방수칙</h1><br>
<br>

	<div class="row row-cols-1 row-cols-md-3 g-4" style="background-color: #46AAFF;">
	  <div class="col-sub slide-in-bottom">
	    <div class="card h-100">
	      <div class="circle">
		      <img src="./resources/images/think.png" class="img-responsive" alt="의심">
	      </div>
	      <div class="card-body" style="display: flex;">
	        <div class="card-rsquare">
 					의심! 
		    </div>
	        <p class="card-text">
				<span>수사기관, 금융기관은</span>
				<span style="color:red;">절대! 금전거래</span>
				<span>를 요구하지 않습니다! 통장에 얼마 있냐는 질문 또한 하지 않습니다!</span>
			</p>
	      </div>
	    </div>
	  </div>
	  <div class="col-sub slide-in-bottom2">
	    <div class="card h-100">
	      <div class="circle">
	      	<img src="./resources/images/checked.png" class="img-responsive" alt="확인">
	      </div>
	      <div class="card-body" style="display: flex;">
	        <div class="card-rsquare">
 					확인! 
		    </div>
	        <p class="card-text">
       			<span>가족 중 누군가 갑작스러운 금전거래를 요구한다면 가족에게</span>
				<span style="color:red;">전화해 확인</span>
				<span>하세요! 소중한 사람을 납치했다고 한다면</span>
				<span style="color:red;">경찰과 연락을 통해 직접 확인</span>
				<span>하세요!</span>
	        </p>
	      </div>
	    </div>
	  </div>
	  <div class="col-sub slide-in-bottom3">
	    <div class="card h-100">
	      <div class="circle">
	      	<img src="./resources/images/report.png" class="img-responsive" alt="신고">
	      </div>
	      <div class="card-body" style="display: flex;">
	        <div class="card-rsquare">
 					신고! 
		    </div>
	        <p class="card-text">
	        	<span style="color:red;">112(경찰청), 118(인터넷진흥원), 1332(금융감독원)</span>
				<span>으로 빠르게 신고해 더 큰 피해를 예방하세요!</span>
	        </p>
	      </div>
	    </div>
	  </div>
	</div>
<br><br>			
<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

</body>
</html>
