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
  
  <title>보이스피싱</title>
  
  <script type="text/javascript">
	
  	function main(){
  		location.href="${cpath}/main.do";
  	}
  	
  	
  </script>
    
</head>
<body style="display: block;">

<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

	<h2 class="page-title" style="text-align:center;">Sign Up</h2>
	<h2></h2>

<!--회원가입 -->
<div class="container" style="display: flex; justify-content: center; align-items: center;">
 <div class="container" style="width: 500px; display: flex; justify-content: center; align-items: center;	background-color:#f4f4f4;">
   <div class="panel-heading">
   	
			<form class="form-horizontal" action="${cpath}/SignUp.do" method="post">
				<br>
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
				<br>
				<div class="form-group">
					<div class="col-lg-10">
				      <input type="text" class="form-control" id="memName" placeholder="이름을 입력해주세요." name="memName" style="width: 300px; padding: 26px 20px;">
				    </div>
				</div>
				<br>
				<div class="form-group">
					<div class="col-lg-10">
				      <input type="text" class="form-control" id="Tel" placeholder="01012345678" name="Tel" style="width: 300px; padding: 26px 20px;">
				    </div>
				</div>
				<br>
			    <div class="form-group" style="margin-bottom: 10px;">
					<div class="form-group" style="display: flex;">
				      <button type="submit" class="Qbtn Qbtn-btn2 Qbtn-small share-or-copy">회원가입</button>	
					  <button type="button" class="Qbtn Qbtn-btn2 Qbtn-small share-or-copy" onclick="main()" style="width: 100px;">목록</button>
					</div>
			    </div>
			</form>

  </div>
 </div>
</div>
<!-- <div class="container" style="display: flex; justify-content: center; align-items: center;">
  <div class="panel panel-default" 
  	style="width: 45%; display: flex; justify-content: center; align-items: center;	background-color:#f4f4f4;">
  

 -->

<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

  
</body>
</html>
