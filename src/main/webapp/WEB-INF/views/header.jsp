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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <script type="module" src="${cpath}/resources/js/share.js"></script>
  <script type="module" src="${cpath}/resources/js/questions.js"></script>
  
  <title>보이스피싱 모의체험!</title>
  
  <style>
  	 a{background-color: #000cff; color: #ffffff;}
  </style>

  <script type="text/javascript">
	
  	function login(){
  		location.href="${cpath}/login.do";
  	}
  	
  	function register(){
  		location.href="${cpath}/register.do";
  	}
  	
  </script>
  
</head>
<body>

<!-- 메뉴 -->
<nav class="navbar navbar-inverse" style="position:sticky; top: 0; z-index:10;">
  <div class="container-fluid" style="background-color:#000cff;">
    <div class="navbar-header">
      <ul class="nav navbar-nav">
      	<li class="active">
      		<a class="navbar-brand" href="${cpath}/main.do" style="font-size: 30px; background-color:#000cff; color:#ffffff;">
      			VP112
  			</a>
		</li>
      </ul>
    
    <ul class="nav navbar-nav" style="background-color:#000cff">
      <li><a href="${cpath}/questionMain.do" style="color:#ffffff;">VP모의체험</a></li>
      <li><a href="${cpath}/#" style="color:#ffffff;">VP확률검사</a></li>
      <li><a href="${cpath}/sub.do" style="color:#ffffff;">피해예방수칙</a></li>
      <li><a href="${cpath}/edu.do" style="color:#ffffff;">금융예방교육</a></li>
      <li><a href="${cpath}/CmBoard.do" style="color:#ffffff;">금융커뮤니티</a></li>
    </ul>
    
<c:choose>
	<c:when test="${empty loginMember}">    
    <ul class="nav navbar-nav navbar-right">
      <li>
      	<a href="#" class="btn" role="button" onclick="register()" style="color:#ffffff;">
      		<span class="glyphicon glyphicon-user"></span> 회원가입
   		</a>
	  </li>
      <li>
      	<a href="#" class="btn" role="button" onclick="login()" style="color:#ffffff;">
      		<span class="glyphicon glyphicon-log-in"></span> 로그인
      	</a>
      </li>
    </ul>
  </c:when>
  	<c:otherwise>
      	<a href="${cpath}/mypage.do" class="btn" role="button" style="color:#ffffff;">
      		<span class="glyphicon glyphicon-log-in"></span> 마이페이지
      	</a>
      	<a href="${cpath}/mypage.do" class="btn" role="button" onclick="Logout()" style="color:#ffffff;">
      		<span class="glyphicon glyphicon-log-in"></span> 로그아웃
      	</a>      	
	</c:otherwise>
</c:choose>  
  </div>
</nav>



	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
