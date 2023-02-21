<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">	
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  <title>VP확률검사 페이지 입니다</title>

  
</head>
<body style="height: 100%;">


<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>
<br>
<h1 class="page-title">VP확률검사</h1>
<br>
<div class="container justify-content-space-evenly;" 
	style="background-color: whitesmoke; border-radius: 20px; width: 80%; height: 70%; display: flex; flex-direction: column; justify-content: space-evenly;">
	<form action="http://localhost:9900" method="post" enctype="multipart/form-data">
		<div style="width: 100%; display: flex;">
	    	<input class="form-control form-control-lg" id="formFileLg" name="uploadFile" type="file" style="margin-right: 10px;" multiple />
	    	<!--  <button class="Cbtn" type="button" style="width: 10em;">확률 검사!</button>-->
	    	<button class="Cbtn" style="width: 10em;">확률 검사!</button>
	   	</div>
	</form>
	<br><br>
	
	<div class="row" style="width: 100%;">
		<div class="container" style="border-radius: 20px;">
	      <div class="container" style="display: flex; flex-direction: column; text-align: center;">
			<h2>해당 통화의 보이스피싱 확률은 ${param.result}%입니다!</h2>
			<br>
			<h2 style="color: red;">지금 바로 신고하세요!</h2>
        	<h2 style="color: red;">112(경찰청), 118(인터넷진흥원), 1332(금융감독원)</h2>
			<br>
			<div style="display: flex; flex-direction:row;">
				<figure>
					<img alt="경찰" class="hover12" src="./resources/images/police.png" onclick="window.open('https://www.police.go.kr/index.do','self')">
				</figure>
				<figure>
					<img alt="인터넷진흥원" class="hover12" src="./resources/images/internet.png" onclick="window.open('https://www.kisa.or.kr/#firstPage','self')">
				</figure>
				<figure>
					<img alt="금융감독원" class="hover12" src="./resources/images/financial.png" onclick="window.open('https://www.fss.or.kr/fss/main/main.do','self')">
				</figure>
			</div>
		  </div>
	    </div>
    </div>
    <br>
</div>
<br><br><br><br>

<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

</body>
</html>