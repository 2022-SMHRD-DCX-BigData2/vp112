<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
  		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
  		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

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
		 var mem_id = $('#mem_id').val();
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
		        	 "mem_id" : mem_id,
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

	<h1 class="page-title">마이페이지</h1>


<div class="container" style="width: 65%; border-radius: 20px; background-color: whitesmoke;">
 <main class="myPage">
	<br>
 	<div class="row g-1" style="display: flex; flex-direction: column; align-items: center;">
		<div class="col-md-7 col-lg-8" style="text-align: center;">
			<h4>${loginMember.memName}님 환영합니다!</h4>
		</div>
		<br>
 		<div class="col-md-7 col-lg-8">
 			<form class="needs-validation" action="${cpath}/memUpdate" method="post" id="mem_Update" name="mem_Update">
 				<div class="row-g-3">
 					<div class="col-12">
 						<label for="mem_id">아이디 :</label> 
						<input type="text" class="form-control" id="mem_id" name="mem_id" value="${loginMember.mem_id}" readonly>
 					</div>
 					<div class="col-12">
 						<label for="memPw">비밀번호:</label> 
						<input type="password" class="form-control" value="${loginMember.memPw}" readonly>
 					</div>
 					<div class="col-12">
						<label for="memPw">새 비밀번호:</label> 
						<input for="memPw" type="text" class="form-control" id="memPw" name="memPw" value="${loginMember.memPw}">
 					</div>
 					<div class="col-12">
 						<label for="memName">이름:</label> 
						<input type="text" class="form-control" id="memName" name="memName" value="${loginMember.memName}">
 					</div>
 					<div class="col-12">
 						<label for="memPhone">휴대폰 :</label> 
						<input type="text" class="form-control" id="memPhone" name="memPhone" value="${loginMember.memPhone}">
 					</div>
 					<div class="col-12"> 
 						<label for="memJoindate">회원 가입일자 :</label> 
						<input type="text" class="form-control" id="memJoindate" name="memJoindate" value="${loginMember.memJoindate}" readonly>
 					</div>
 					<div class="col-12">
 						<!-- 회원 유형 일반회원:'M',  관리자:'A' -->
						<label for="memType">회원 유형 :</label> 
						<input type="text" class="form-control" id="memType" name="memType" value="${loginMember.memType}" readonly>
 					</div>
 					<br>
 					<div class="col-12">
		 				<button type="button" class="Cbtn" onclick="Update()" style="width: 5em;">수정하기</button>
 					</div>
 					<br>
 					<div style="text-align:center; color: blue;"> * 수정한 회원정보는 로그아웃 후 재로그인시 적용됩니다.</div>
 				</div>
 			</form>
 		</div>
 	</div>
 </main>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>