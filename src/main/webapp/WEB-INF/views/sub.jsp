<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" style="height:100%;">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  

  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>피해예방수칙</title>

</head>
<body style="height:100%;">
<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

<h1 class="page-title">피해예방수칙</h1>
	
	<div class="container-fluid" style="margin-top: 0; background-color: #46AAFF; height: 70%;display: flex;">
		<div class="row" style="display:flex; justify-content:center;">
			<br><br><br><br>
			<div class="col-md-4" style="margin: 2em; background-color: #ffffff; border-radius: 20px; border-style: dashed; 
			border-width: thin; display:flex; justify-content:center; align-items:center; flex-direction: column;">
				
				<div style="width:15em; height:15em; border-radius: 50%; display:flex; align-items:center;
					margin-top: 1em; background-color: #46AAFF; color: yellow; line-height: 10em;">
					<img src="./resources/images/think.png" class="img-responsive" alt="의심" style="width:10em; height:10em;">
				</div>
				<br>
				<div style="width:10em; height:4em; border-radius: 20px; text-align:center;
					background-color: #000000; color: yellow; line-height: 4em; margin-bottom:1em;">
					의심!
				</div>
				<br>
				<p style="text-align:center;">
					<span>수사기관, 금융기관은</span>
					<span style="color:red;">절대! 금전거래</span>
					<span>를 요구하지 않습니다!</span>
					<p>통장에 얼마 있냐는 질문 또한 하지 않습니다!</p>
				</p>
			</div>
			
			<div class="col-md-4" style="margin: 2em; background-color: #ffffff; border-radius: 20px; border-style: dashed;
			border-width: thin;	display:flex; justify-content:center; align-items:center; flex-direction: column;">
				
				<div style="width:15em; height:15em; border-radius: 50%; display:flex; align-items:center;
					margin-top: 1em; background-color: #46AAFF; color: yellow; line-height: 10em;">
					<img src="./resources/images/checked.png" class="img-responsive" alt="확인" width="100em" height="100em">
				</div>
				<br>
				<div style="width:10em; height:4em; border-radius: 20px; text-align:center;
					background-color: #000000; color: yellow; line-height: 4em; margin-bottom:1em;">
					확인!
				</div>
				<br>
				<p style="text-align:center;">
					<span>가족 중 누군가 갑작스러운 금전거래를 요구한다면 가족에게</span>
					<span style="color:red;">전화해 확인</span>
					<span>하세요! 소중한 사람을 납치했다고 한다면</span>
					<span style="color:red;">경찰과 연락을 통해 직접 확인</span>
					<span>하세요!</span>
				</p>
			</div>
			
			<div class="col-md-4" style="margin: 2em; background-color: #ffffff; border-radius: 20px; border-style: dashed; 
			border-width: thin;	display:flex; justify-content:center; align-items:center; flex-direction: column; ">
				
				<div style="width:15em; height:15em; border-radius: 50%; display:flex; align-items:center;
					margin-top: 1em; background-color: #46AAFF; color: yellow; line-height: 10em;">
					<img src="./resources/images/report.png" class="img-responsive" alt="신고" width="100em" height="100em">
				</div>
				<br>
				<div style="width:10em; height:4em; border-radius: 20px; text-align:center;
					background-color: #000000; color: yellow; line-height: 4em; margin-bottom:1em;">
					신고!
				</div>
				<br>
				<p style="text-align:center;">
					<span style="color:red;">112(경찰청), 118(인터넷진흥원), 1332(금융감독원)</span>
					<span>으로</span>
					<p>빠르게 신고해 더 큰 피해를 예방하세요!</p>
				</p>
			</div>
			<br><br><br><br>
		</div>
	</div>
 
<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

</body>
</html>
