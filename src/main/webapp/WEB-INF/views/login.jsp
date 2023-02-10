<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" style="height:100%; margin-bottom: 2%;">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

  <script type="module" src="${cpath}/resources/js/share.js"></script>
  <script type="module" src="${cpath}/resources/js/questions.js"></script>
  

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
  		  integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  		  
  		  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  		   

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   

   <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
      
  <title>보이스피싱!</title>
  
</head>
<body style="display: block;">
<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

	<h2 class="page-title" style="text-align:center;">로그인</h2>
	<h2></h2>

<!-- 로그인 -->	 
<div class="container" style="display: flex; justify-content: center; align-items: center;">
  <div class="container" style="width: 500px; display: flex; justify-content: center; align-items: center; background-color:#f4f4f4; border-radius:20px;">
      <c:choose>
	   <c:when test="${empty loginMember}">	
		<form class="form-horizontal needs-validation" action="${cpath}/Login.do" method="post">
		  <br><br>
		  <div class="form-group">
		    <div class="col">
		    <input class="form-control form-control-lg" id="mem_id" name="mem_id" type="text" placeholder="아이디를 입력해주세요." aria-label=".form-control-lg example" style="padding:20px;" required>
		    </div>
		  </div>
		  <br>
		  <div class="form-group">
		    <div class="col">
		      <input class="form-control form-control-lg" id="memPw" name="memPw" type="password" placeholder="비밀번호를 입력해주세요." aria-label=".form-control-lg example" style="padding:20px;" required>
		    </div>
		  </div>
		  <br><br>
		  <div class="form-group">
		      <div class="col" style="display: flex; align-items: center; justify-content: center	;">
			      <button type="submit" class="Qbtn Qbtn-btn2 Qbtn-small">로그인</button>
			      <button type="button" class="Qbtn Qbtn-btn2 Qbtn-small">ID 찾기</button>
			      <button type="button" class="Qbtn Qbtn-btn2 Qbtn-small">PW 찾기</button>
			  </div>

		  </div>
	   </div> 
		  <br><br>
		</form>	
	   </c:when>
		 <c:otherwise>
		 	<div class="form-group">
		 		<span>${loginMember.memName}님 환영합니다!</span>
		 		<a class="btn btn-sm btn-default" href="${cpath}/Logout.do"></a>
		 	</div>
		 </c:otherwise>
	  </c:choose>
  </div>
</div>
	  


<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

</body>
</html>
