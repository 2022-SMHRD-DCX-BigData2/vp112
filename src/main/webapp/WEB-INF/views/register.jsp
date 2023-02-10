<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" style="height:100%; margin-bottom: 2%;">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
  		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
  		  integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>  
  <script type="module" src="${cpath}/resources/js/share.js"></script>
  <script type="module" src="${cpath}/resources/js/questions.js"></script>  
  
  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>보이스피싱</title>
  
  <script type="text/javascript">
  //메인 
	function main(){
		location.href="${cpath}/main.do";
	}
	//회원가입 입력없을때, 페이지 읽고 함수 실행
	$(document).ready(function() {
		//회원가입 클릭시 함수
		$('#submit').on("click", function() {
			//아이디,비번,이름 아이디 불러와서 변수에 ㄱㄱ 
			var mem_id = $("#mem_id").val();
			var memPw = $("#memPw").val();
			var memName = $("#memName").val();
			var memPhone = $("#memPhone").val();
			
			//변수가 ""일때 조건
			if (mem_id == "") {
				alert("아이디를 입력하세요");
				$("#mem_id").focus();
					return false;
		   }
			if (memPw == "") {
				alert("비밀번호를 입력하세요");
				$("#memPw").focus();
					return false;
			}
			if (memName == "") {
				alert("이름을 입력하세요");
				$("#memName").focus();
			    	return false;
			}
		});
	 })
	 
	 
	// 회원가입 아이디 중복 체크
		function id_check() {
			 
			var mem_id = $('#mem_id').val();
			console.log(mem_id);
			
			if(mem_id){
			$.ajax({
				url : 'user_id_check',
				type : 'get',
				data:{
					mem_id : mem_id
				},
				success : function(data) {
					if (data == 3) {
						alert("서비스 오류");
					} else if (data == 1) {
						$("#id_check").html('이미 사용중인 아이디입니다.');
						$("#id_check").attr('color','#dc3545');
					}else{
						$("#id_check").html('사용할 수 있는 아이디입니다.');
						$("#id_check").attr('color','#2fd380');
					}
				},
				error : function() {
					alert("서버연결 실패");
				}
			});
			}
		} 

  </script>
    
</head>
<body style="display: block;">

<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

	<h2 class="page-title" style="text-align:center;">회원가입</h2>
	<h2></h2>

<!--회원가입 -->
<div class="container" style="display: flex; justify-content: center; align-items: center;">
  <div class="container" style="width: 500px; display: flex; justify-content: center; align-items: center; background-color:#f4f4f4; border-radius: 20px;">
   <div class="panel-heading">
   	
			<form class="form-horizontal" action="${cpath}/join.do" method="post">
				<br>
				<div class="form-group">
				
					<div class="col">
					  <input class="form-control form-control-lg" id="mem_id" name="mem_id" type="text" placeholder="아이디를 입력해주세요." aria-label=".form-control-lg example" style="padding:20px;" required>
				      <font id="id_check" size="2"></font>
					  <button class="btn btn-success" type="button" onclick="id_check()">중복확인</button>
				    </div>
				</div>
				<br>
				<div class="form-group">
					<div class="col">
					  <input class="form-control form-control-lg" id="memPw" name="memPw" type="password" placeholder="비밀번호를 입력해주세요." aria-label=".form-control-lg example" style="padding:20px;" required>
				    </div>
				</div>
				<br>
				<div class="form-group">
					<div class="col">
					  <input class="form-control form-control-lg" id="memName" name="memName" type="text" placeholder="이름을 입력해주세요." aria-label=".form-control-lg example" style="padding:20px;" required>
				    </div>
				</div>
				<br>
				<div class="form-group">
					<div class="col">
					  <input class="form-control form-control-lg" id="memPhone" name="memPhone" type="text" placeholder="01012345678" aria-label=".form-control-lg example" style="padding:20px;" required>
				    </div>
				</div>
				<br>
			    <div class="form-group" style="margin-bottom: 10px;">
					<div class="form-group" style="display: flex;">
					  <button type="submit" class="Qbtn Qbtn-btn2 Qbtn-small">회원가입</button>	
					  <button type="button" class="Qbtn Qbtn-btn2 Qbtn-small" onclick="main()" style="width: 100px;">목록</button>
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
