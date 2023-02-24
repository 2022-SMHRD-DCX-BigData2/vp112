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
	style="background-color: whitesmoke; border-radius: 20px; width: 80%; height: 112%; display: flex; flex-direction: column; justify-content: space-evenly;">
   	<div>
	   	<h7 class="animate__bounce" style="color: blue;">파.일.선.택  후! 확률검사 버튼을 눌러주세요</h7>
	   	<h7 class="animate__bounce" style="color: blue;">확률검사는 1~2분 정도 소요됩니다.잠시만 기다려주세요</h7>
   	</div>	
   	
	<form action="http://127.0.0.1:9990" method="post" enctype="multipart/form-data">
		<div style="width: 100%; display: flex;">
	    	<input class="form-control form-control-lg" id="formFileLg" name="uploadFile" type="file" style="margin-right: 10px;" multiple />
	    	<!--  <button class="Cbtn" type="button" style="width: 10em;">확률 검사!</button>-->
	    	<button class="Cbtn" style="width: 10em;">확률 검사!</button>
	   	</div>

	</form>

	<!-- <br><br> -->

	<div class="row" style="width: 100%;">
	   <div class="container" style="border-radius: 20px;">
	      <div class="container" style="display: flex; flex-direction: column; text-align: center;">
			<p class="page-title">해당 통화의 보이스피싱 확률은  <i class="animate__tada" style="color: red;">${param.result}%</i> 입니다!</p>
			
			
			<br>
			<c:choose>
				<c:when test="${param.result >= 70}">
				<img src="${cpath}/resources/images/WordCloud1.jpg" alt="보이스피싱_워드클라우드_결과이미지" class="WordCloud">  <!--확률높음 -->
					<h2 class="animate__bounce" style="color: red;">지금 바로 신고하세요!</h2>
		        	<h2 class="animate__bounce" style="color: red;">112(경찰청), 118(인터넷진흥원), 1332(금융감독원)</h2>
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
					<h2 class="animate__bounce" style="color: blue;">*이미지를 누르시면 해당 사이트로 이동됩니다*</h2>
				</c:when>
				<c:when test="${param.result < 70}">
				<img src="${cpath}/resources/images/WordCloud2.jpg" alt="보이스피싱_워드클라우드_결과이미지" class="WordCloud">  <!--확률낮음 -->
					<h2 class="animate__bounce" style="color: red;">확률은 낮지만 그래도 의심하는게 좋습니다!</h2>
		        	<h2 class="animate__bounce" style="color: blue;" onclick="location.href='${cpath}/sub.do'">피해예방수칙을 읽어보시는건 어떨까요?</h2>
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
					<h2 class="animate__bounce" style="color: blue;">*이미지를 누르시면 해당 사이트로 이동됩니다*</h2>
				</c:when>
				<c:otherwise>
					<h2 class="animate__bounce" style="color: blue; cursor:pointer;" onclick="location.href='${cpath}/sub.do'">피해예방수칙을 읽어보세요!</h2>
				</c:otherwise>
			</c:choose>
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
