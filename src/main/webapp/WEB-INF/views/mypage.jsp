<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
    
  <title>보이스피싱!</title>

</head>

<script type="text/javascript">
	function main(){
		location.href="${cpath}/main.do";
	}  
	
	function Logout(){
 		location.href="${cpath}/Logout.do";
 	}  	
	
    //회원수정하기  함수
    function Update(){
 	 var memId = $('#memId').val();
 	 var memPw = $('#memPw').val();
 	 var memName = $('#memName').val();
 	 /* var memName = $('#memPhone').val(); */
 	
 	 
 	 let fData = $("#mem_Update").serialize();
 	 console.log(fData);
 	 
 	 $.ajax({
 		     anyne : true,
 	         url : "${cpath}/memUpdate",
 	         type : "post",
 	         contentType : "application/json;charset=utf-8",
 	         data :JSON.stringify({
 	        	 "memId" : memId,
 	        	 "memPw" : memPw,
 	        	 "memName" : memName,
 	        	 /* "memPhone" : memPhone */
 	         }),
 	         success : function(){
 	        	 console.log("ajax실행");
 	        	 location.href='main.do'
 	         },
 	         error : function(){
 	        	 alert("수정하기 실패");
 	         }
 	      });
	    }
</script>

<body>
	
<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

	<h2>마이페이지 입니다</h2>


<div class="container">
 <div class="panel panel-default">
   <div class="panel-heading">
   
   		<div class="form-group">
			<span>${loginMember.memName}님 환영합니다~~~~</span><br>
		</div>
		
			<form class="form-inline" action="${cpath}/memUpdate" method="post" id="mem_Update" name="mem_Update">
				<div class="form-group">
				
					<label for="memId">아이디 :</label> 
					<input type="text" class="form-control" id="memId" name="memId" value="${loginMember.memId}" readonly>
				</div><br>
				
				<div class="form-group">
					<label for="memPw">비밀번호:</label> 
					<input type="password" class="form-control" value="${loginMember.memPw}" readonly>
				</div><br>
				
				<div class="form-group">
					<label for="memPw">새 비밀번호:</label> 
					<input type="password" class="form-control" id="memPw" name="memPw">
				</div><br>
				
				<div class="form-group">
					<label for="memName">이름:</label> 
					<input type="text" class="form-control" id="memName" name="memName" value="${loginMember.memName}">
				</div><br>

				<div class="form-group">
					<label for="memPhone">휴대폰 :</label> 
					<input type="text" class="form-control" id="memPhone" name="memPhone" value="${loginMember.memPhone}">
				</div><br>				
			
				<div class="form-group">
					<label for="memJoindate">회원 가입일자 :</label> 
					<input type="text" class="form-control" id="memJoindate" name="memJoindate" value="${loginMember.memJoindate}" readonly>
				</div><br>

				<div class="form-group">
				      <!-- 회원 유형 일반회원:'M',  관리자:'A' -->
					<label for="memType">회원 유형 :</label> 
					<input type="text" class="form-control" id="memType" name="memType" value="${loginMember.memType}" readonly> <!-- readonly="readonly" -->
				</div><br>
				
 				<button type="button" class="btn btn-success" onclick="Logout()">로그아웃</button>
 				<button type="button" class="btn btn-default" onclick="Update()">수정하기</button>
				<button type="button" class="btn btn-default" onclick="main()">home</button>	
			</form>
  </div>
 </div>
</div>



</body>
</html>