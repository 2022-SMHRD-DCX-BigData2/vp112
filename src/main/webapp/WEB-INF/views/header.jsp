<%@page import="kr.board.entity.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
  		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
  		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

  <title>보이스피싱 모의체험!</title>
  
  <script type="text/javascript">
  	function login(){
  		location.href="${cpath}/login.do";
  	} /* http://localhost:8084/smhrd/main.do */

  	function register(){
  		location.href="${cpath}/register.do";
  	}
  	var collapseElementList = [].slice.call(document.querySelectorAll('.collapse'))
  	var collapseList = collapseElementList.map(function (collapseEl) {
  	  return new bootstrap.Collapse(collapseEl)
  	})
  	

	function Logout(){
 		location.href="${cpath}/Logout.do";
 	}  	

  	var collapseElementList = [].slice.call(document.querySelectorAll('.collapse'))
  	var collapseList = collapseElementList.map(function (collapseEl) {
  	  return new bootstrap.Collapse(collapseEl)
  	})

  </script>
</head>
<body>
<!-- 메뉴 -->
<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-primary" aria-label="First navbar example">
   <div class="container-fluid align-items-baseline">
     <a class="navbar-brand" href="${cpath}/main.do" style="font-weight: 900;">VP112</a>
     <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbarDark" aria-controls="offcanvasNavbarDark">
       <span class="navbar-toggler-icon"></span>
     </button>
     <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbarDark" aria-labelledby="offcanvasNavbarDarkLabel">
       <div class="offcanvas-header">
         <h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel"><a class="navbar-brand" href="${cpath}/main.do">VP112</a></h5>
         <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
       </div>
       <div class="offcanvas-body">
         <ul class="navbar-nav justify-content-end flex-grow-4 pe-3">
           <li class="nav-item">
             <a class="nav-link" href="${cpath}/questionMain.do"><i class="bi bi-person-add"></i> VP모의체험</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="${cpath}/VPcheck.do"> VP확률검사</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="${cpath}/sub.do"> 피해예방수칙</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="${cpath}/OX.do"> OX퀴즈</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="${cpath}/ViBoard.do"> 금융사기예방교육</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="${cpath}/CmBoard.do"> 금융커뮤니티</a>
           </li>
         </ul>
         <ul class="navbar-nav justify-content-end flex-grow-1 pe-1">
           <c:choose>
				<c:when test="${empty loginMember}">
		    	  	<li class="nav-item">
		    	  		<a class="nav-link" role="button" onclick=register()><i class="bi bi-person-add"></i> 회원가입</a>
		    	  	</li>
		    	  	<li class="nav-item">
		    	  		<a class="nav-link" role="button" onclick=login()> 로그인</a>
		    	  	</li>
				</c:when>
				<c:otherwise>
			    	  	<li class="nav-item">
			    	  		<a class="nav-link" role="button" href="${cpath}/mypage.do"> 마이페이지</a>
			    	  	</li>
			    	  	<li class="nav-item">
			    	  		<a class="nav-link" role="button" onclick=Logout()> 로그아웃</a>
			    	  	</li>
				</c:otherwise>
			</c:choose>
     	  </ul>
       </div>
     </div>
   </div>
</nav>
</body>
</html>
