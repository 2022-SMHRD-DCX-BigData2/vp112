<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 날짜표시 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
  		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  
  <script type="module" src="${cpath}/resources/js/share.js"></script>
  <script type="module" src="${cpath}/resources/js/questions.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
		
  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>보이스피싱 커뮤니티 메뉴</title>

  <script type="text/javascript">
  
	$(document).ready(function(){
		CmboardList();
  	});

	function CmboardList() {
  		console.log("실행되면 로그에 보이게!")
  		$.ajax({
	  			url : "${cpath}/TDLCommunity",
	  			type : "get",
	  			dataType : "json", 
	  			success : callBack,
	  			error : function() {
	  				alert("error");
				}
  		}) //ajax끝
	} //CmboardList함수 끝
	
	function callBack(data) { 
		console.log("데이터 통신 확인!");
		console.log(data) 

		var bList = "<table class='table table-hover'>"; 
		bList += "<thead>"; 
		bList += "<tr>";
		bList += "<th style='text-align: center; width: 10em;'>번호</th>";
		bList += "<th style='text-align: center;'>제목</th>";
		bList += "<th style='width: 10em;'>작성자</th>";
// 		bList += "<th>작성일</th>";
		bList += "<th style='text-align: center; width: 6em;'>조회수</th>";
		bList += "</tr>";
		bList += "</thead>";
		bList += "<tbody class='table-group-divider'>";
		
		
		$.each(data,(index,obj)=>{ //이문법 원래 오류라고 나오는게 맞다. 오류 아닌데 이클립스가 오류로 인식함
			bList += "<tr>";
			bList += "<th style='text-align: center;'>" + obj.idx + "</th>"; 
			bList += "<td><a href='javascript:cview(" + obj.commIdx + ")'>" + obj.commTitle + "</a></td>";
			bList += "<td>" + obj.mem_id + "</td>";
// 			bList += "<td>" + obj.commDate + "</td>";
			/* indatas = obj.indate
			bList += "<td><fmt:formatDate value='${indatas.regdate}' pattern='yyyy.MM.dd'/> </td>"; */
			bList += "<td id='count" + obj.commIdx + "' style='text-align: center;'>" + obj.commViews + "</td>";
			bList += "</tr>";
			
			//게시글 내용만 보여주는 태그 
	        bList += "<tr style='display:none' id='c" + obj.commIdx + "'>"; 
	        bList += "<td>내용</td>"; 
	        bList += "<td colspan='4'>";
	        bList += "<textarea class='form-control' row='7' id='nc" + obj.commIdx + "'>" +  obj.content + "</textarea>";
	        
	        //로그인 정보와, 데이터 mem_id가 같으면 수정 삭제 가능
	        if("${loginMember.mem_id}" == obj.mem_id){
		        bList += "<button class='btn btn-sm btn-warning' onclick='goUpdate(" + obj.commIdx + ")'>수정</button>";
		        bList += "<button class='btn btn-sm btn-primary' onclick='goDel(" + obj.commIdx + ")'>삭제</button>";
	        }else{
	        	bList += "<button disabled class='btn btn-sm btn-warning' onclick='goUpdate(" + obj.commIdx + ")'>수정</button>";
		        bList += "<button disabled class='btn btn-sm btn-primary' onclick='goDel(" + obj.commIdx + ")'>삭제</button>"; 
        	}

	        bList += "</td>";
	        bList += "<tr>";
		}); //each끝
		
		bList += "<tr>";
		bList += "<td colspan='5'>";
		bList += "<button class='Cbtn' onclick='goForm()'>글쓰기</button>";
		bList += "</td>";
		bList += "</tr>";
		bList += "</tbody>";
		bList += "</table>";
		$("#list").html(bList); 
	} //callBack함수 끝
	
	function goForm() {
		//글쓰기 버튼 클릭 시, 리스트 목록은 x, 글쓰기 폼태그는 화면에 보여주기
		$("#list").css("display","none");
		$("#wform").css("display","block");
	} // goForm끝		

	
	function insertFn(){
	//1.form태그 안에 있는 input태그에 입력한 내용들 가져오기
		var fData = $("#frm").serialize();
		console.log("폼태그 내용",fData);
	//2.그 내용들은 ajax통신으로 보내기
	$.ajax({
			url : "${cpath}/TDLCommunity",
			type : "post",
			data : fData, 
			success : CmboardList,  
			error : function() { 
				alert("글쓰기 실패");
			}
		}); //insert ajax끝
		//3.잘 보내졌으면 글쓰기 버튼 누르고 다면 다시 게시글 목록이 보여질 수 있도록
			$("#list").css("display","flex");
			$("#wform").css("display","none");
		//4.글쓰고 나면 다시 열었을때  form태그에  내용이 남은 상태임 	
			$("#reset").trigger("click") //취소버튼을 강제로 실행 js코드
		
		} //insertFn 끝
	
	//조회수 증가
	function cview(commIdx) { 
		if($("#c"+commIdx).css("display") == "none"){  
			$.ajax({
		  			url : "${cpath}/CmupdateCount/"+commIdx, 
		  			type : "get",
		  			success : function(vo){
		  				console.log(vo.commViews);
		  				$("#count"+commIdx).text(vo.commViews);
		  			},
		  			error : function() {
		  				alert("조회수 올리기 실패!");
		  			}
	  		}); //조회수 ajax끝
				$("#c"+commIdx).css("display","table-row") 
			}else{
				$("#c"+commIdx).css("display","none")
			}
		} //cview 끝
	
	
	function goDel(commIdx) {
		var real = confirm("정말 삭제하시겠습니까?")
		if(real){
			$.ajax({
		  			url : "${cpath}/TDLCommunity/"+commIdx,
		  			type : "delete",
		  			data : {"commIdx" : commIdx},
		  			success : CmboardList,
		  			error : function() {
		  				alert("글삭제 실패!");
		  			}
		  		});
			}
		} //goDel끝

	
	function goUpdate(commIdx){
	      var newContent = $("#nc"+commIdx).val();
	      $.ajax({
	            url : "${cpath}/TDLCommunity",
	            type : "put",
	            contentType : "application/json;charset=utf-8",
	            data : JSON.stringify({"commIdx":commIdx, "commContent": newcommContent}), 
	            success : CmboardList,
	            error : function(){
	            	
	            alert("글 수정 실패~");
	            }
	         });
		   } //goUpdate끝
  </script>


</head>
<body style="height: inherit;">
<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

<h1 class="page-title">커뮤니티</h1>
<!--게시판 -->
<div class="container" style="background-color: whitesmoke; border-radius: 20px;">
 <div class="panel panel-default">
    <div class="panel-body" id="list" style="display: flex; justify-content: center;">Panal content</div>
    <div class="panel-body" id="wform"  style="display:none"> 
    
    	<form id="frm">
    		<br><br>
    		<div class="row g-2">
			  <div class="col-sm-7">
		         <input type="text" class="form-control" name="commTitle" id="commTitle" placeholder="제목을 입력하세요" maxlength="50">
		      </div>
			  <div class="col-sm">
			    <input type="text" readonly="readonly" class="form-control" name="commWriter" id="commWriter" value="${loginMember.memName}" placeholder="작성자">
			    <input type="hidden"  class="form-control" name="commWriter" id="commWriter">
		        <input type="hidden"  class="form-control" name="commFile" id="commFile" value="test">
			    <input type="hidden" name="mem_id" value="${loginMember.memId}">
			  </div>
		    </div>
		    <br>
			<div class="row g-1">  
			  <div class="mb-3">
			      <textarea class="form-control" name="commContent" rows="10" id="commContent" placeholder="내용을 입력하세요"></textarea>
		      </div>
			</div>
			<br>
			<div class="row-B justify-content-center">
			  <div class="col-sm-1">
				<button type="button" class="Cbtn" onclick="insertFn()" style="margin-right: 10px;">등록</button>
				<button type="button" class="Cbtn" onclick='location.href = "${cpath}/TDLCommunity.do" ' style="margin-left: 10px;">취소</button>
			  </div>
			</div>
			<br>
		</form>
		
    </div>
 </div>
</div>
<br><br><br>
<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

</body>
</html>
