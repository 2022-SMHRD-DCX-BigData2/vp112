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
  
  <link rel="stylesheet" href="${cpath}/resources/css/OX.css">
  <!-- sweetalert2 -->
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  
   <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>ox퀴즈 입니다</title>
  
</head>
<body>

<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>
	<br>
	<h1 class="page-title">O X 퀴즈!</h1>
	<br>
	
	<div style="display: flex; justify-content: center;">
		<div class="OXC">
			<!-- 번호 영역 -->
			<h3 class="number" id="number_id">
				
			</h3>
			
			<!-- 문제 영역 -->
			<h3 class="problem" id="problem_id">
				
			</h3>
			
			<!-- 보기 영역 -->
			<div class="answer" id="answer_id">
				
			</div>
			
			<!-- 광고 영역 -->
			<div class="admin">
				
			</div>
		</div>
	</div>
		
		
    <script>

      var number_id, problem_id, answer_id;
      //문제
      var problem_arr = ['경찰, 검찰, 금융감독원 등 수사기관에서 범죄에 연류되었다고<br> 공문을 보내며 계좌번호, 금전을 유도한다면 그대로 따라야 한다.',
    	  				 '금융기관으로부터 전화나 문자메세지로 대출을 권유받는다면<br> 먼저 출처가 분명한 곳인지 확인해야 한다.',
    	  				 '출처가 불분명한 곳으로부터 문자나 전화를 통해<br> 휴대폰에 앱설치를 요구한다면 바로 삭제하거나 전화를 끊어버린다.',
                         '"자녀를 납치했다 경찰에 신고하지말고 시키는대로 돈을 준비해라"와 같은<br> 보이스피싱 전화를 받게 되면 경찰에 신고하지 말아야 한다.',
                         '본인이 아닌 타인으로부터 "자녀가 사고가 났다 치료를 하려면 치료비가 필요하다"와 같은 보이스피싱 전화를 받으면 일단 전화를 끊고 확인해야 한다.',
                         '결과를 확인해 보세요'];
      //정답	                         
      var answer_arr = ['X',
	 		    	    'O',
				    	'O',
				    	'X',
				    	'O'];
				    	
      
      var selectAnswer, score;
      var imgNum, startNum, endNum;
      
      function init(){
         number_id = document.getElementById("number_id");
         problem_id = document.getElementById("problem_id");
         answer_id = document.getElementById("answer_id");
         
         startNum = 0;
         endNum = 5;
         score = 0;
         
         setProblem();
      }
      
      init();
      
      function setProblem(){
         problem_id.innerHTML = "<b>" + problem_arr[startNum] + " </b>";
         
         if(startNum == endNum){
            number_id.innerHTML = "<span class='label'>< 결과보기 ></span>";
            answer_id.innerHTML = "<button type='button' class='button res' onclick='btnResFunc();'>결과보기</button><button type='button' class='button restart' onclick='history.go(0);'>다시하기</button>";
         } else {
            number_id.innerHTML = "<span class='label'>< " + parseInt(startNum + 1) + " ></span>";
            answer_id.innerHTML = "<button type='button' class='button o' onclick='btnOFunc();'><h2 class='OXbtn'>O</h2></button><button type='button' class='button x' onclick='btnXFunc();'><h2 class='OXbtn'>X</h2></button>";
         }
      }
      
      function btnOFunc(){
         selectAnswer = "O";
         if(answer_arr[startNum] == selectAnswer){
            score++;
         }
         startNum++;
         setProblem();
      }
      
      function btnXFunc(){
         selectAnswer = "X";
         if(answer_arr[startNum] == selectAnswer){
            score++;
         }
         startNum++;
         setProblem();
      }
      
      function btnResFunc(){
    	if(score<3){
	         Swal.fire({
	            title: '',
	            text: '',
	            html: "<b>이런, 아쉽군요!</b><br><b>당신의 금융사기예방 OX퀴즈 점수는 " + score + "점입니다.</b>",
	            icon: 'warning',
	            confirmButtonColor: '#d33',
	            confirmButtonText: '닫기',
	            allowOutsideClick: false
         	 })
    	}else if(score>=3){
            Swal.fire({
                title: '',
                text: '',
                html: "<b>축하합니다!</b><br><b>당신의 금융사기예방 OX퀴즈 점수는 " + score + "점입니다.</b>",
                icon: 'success',
                confirmButtonColor: '#d33',
                confirmButtonText: '닫기',
                allowOutsideClick: false
             })
    	}  
      }
    </script>


<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>




  
</body>
</html>
