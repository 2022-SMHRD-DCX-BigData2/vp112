<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
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
      
  <title>보이스피싱!</title>
  
</head>
<body style="display: block;">
<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

	<h2 class="page-title" style="text-align:center;">Login</h2>
	<h2></h2>

<!-- 로그인 -->	 
<div class="container" style="display: flex; justify-content: center; align-items: center;">
  <div class="container" style="width: 500px; display: flex; justify-content: center; align-items: center; background-color:#f4f4f4;">
      <c:choose>
	   <c:when test="${empty loginMember}">	
		<form class="form-horizontal" action="${cpath}/Login.do" method="post">
		  <br><br>
		  <div class="form-group">
		    <div class="col-lg-10">
		      <input type="text" class="form-control" id="memId" placeholder="아이디를 입력해주세요." name="memId" style="width: 300px; padding: 26px 20px;">
		    </div>
		  </div>
		  <br>
		  <div class="form-group">
		    <div class="col-lg-10">
		      <input type="password" class="form-control" id="memPw" placeholder="비밀번호를 입력해주세요." name="memPw" style="width: 300px; padding: 26px 20px;">
		    </div>
		  </div>
		  <br><br>
		  <div class="form-group">
		      <div class="form-group" style="display: flex; align-items: center; justify-content: center;">
			      <button type="submit" class="Qbtn Qbtn-btn2 Qbtn-small share-or-copy">로그인</button>
			      <button type="button" class="Qbtn Qbtn-btn2 Qbtn-small share-or-copy">ID 찾기</button>
			      <button type="button" class="Qbtn Qbtn-btn2 Qbtn-small share-or-copy">PW 찾기</button>
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
