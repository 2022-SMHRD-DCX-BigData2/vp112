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
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <title>보이스피싱 모의체험!</title>
  




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
<div class="sub">
  <a href="${cpath}/main.do">home</a>
  <a href="${cpath}/questionMain.do">VP모의체험</a>
  
  <a href="${cpath}/sub.do">VP확률검사</a> 
  <a href="https://gbpolice-preventphishing.kr/doc/save.php">피해예방수칙</a> 
  <a href="${cpath}/sub.do">금융예방교육</a>   <!-- 동영상게시판 -->
  <a href="${cpath}/CmBoard.do">금융커뮤니티</a>   <!-- 게시판 -->
  
  <button type="button" class="btn-default" onclick="login()">로그인</button>
  <button type="button" class="btn-default" onclick="SignUp()">회원가입</button>
</div>
			
</body>
</html>
