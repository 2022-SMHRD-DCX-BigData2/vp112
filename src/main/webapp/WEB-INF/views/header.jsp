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
  	
  	function SignUp(){
  		location.href="${cpath}/SignUp.do";
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
    </div>
    <ul class="nav navbar-nav" style="background-color:#000cff">
      <li><a href="${cpath}/questionMain.do" style="color:#ffffff;">VP모의체험</a></li>
      <li><a href="${cpath}/#" style="color:#ffffff;">VP확률검사</a></li>
      <li><a href="${cpath}/sub.do" style="color:#ffffff;">피해예방수칙</a></li>
      <li><a href="${cpath}/edu.do" style="color:#ffffff;">금융예방교육</a></li>
      <li><a href="${cpath}/CmBoard.do" style="color:#ffffff;">금융커뮤니티</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li>
      	<a href="#" class="btn" role="button" onclick="SignUp()" style="color:#ffffff;">
      		<span class="glyphicon glyphicon-user"></span> 회원가입
   		</a>
	  </li>
      <li>
      	<a href="#" class="btn" role="button" onclick="login()" style="color:#ffffff;">
      		<span class="glyphicon glyphicon-log-in"></span> 로그인
      		<!-- <span class="glyphicon glyphicon-log-out"></span> Logout -->
      	</a>
      </li>
    </ul>
  </div>
</nav>



<%-- <div class="container text-center" style="background-color:whitesmoke;">
	<div class="row justify-content-md-center" style="align-item:center;">
		<div class="col col-lg-2">
		
		</div>
		
		<div class="col-md-auto">
		  <a href="${cpath}/main.do">home</a>
		  <a href="${cpath}/questionMain.do">VP모의체험</a>
		  <a href="${cpath}/sub.do">VP확률검사</a> 
		  <a href="https://gbpolice-preventphishing.kr/doc/save.php">피해예방수칙</a> 
		  <a href="${cpath}/sub.do">금융예방교육</a>   <!-- 동영상게시판 -->
		  <a href="${cpath}/CmBoard.do">금융커뮤니티</a>   <!-- 게시판 -->
	  	</div>
	  	
		<div class="col col-lg-2">
		  <button type="button" class="btn-default" onclick="login()">로그인</button>
		  <button type="button" class="btn-default" onclick="SignUp()">회원가입</button>	
		</div>	
	</div>
</div> --%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
