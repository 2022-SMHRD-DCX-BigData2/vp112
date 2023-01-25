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
  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  
  <title>보이스피싱</title>
  
  <script type="text/javascript">
	
  	function main(){
  		location.href="${cpath}/main.do";
  	}
  	
  	
  </script>
    
</head>
<body>

<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

	<h2>회원가입 페이지 입니다</h2>


<!--로그인 -->
<div class="container">
 <div class="panel panel-default">
   <div class="panel-heading">
   	
			<form class="form-inline" action="${cpath}/SignUp.do" method="post">
				<div class="form-group">
					<label for="memId">ID:</label> 
					<input type="text" class="form-control" id="memId" name="memId">
				</div><br>
				<div class="form-group">
					<label for="memPw">PW:</label> 
					<input type="password" class="form-control" id="memPw" name="memPw">
				</div><br>
				<div class="form-group">
					<label for="memName">이름:</label> 
					<input type="text" class="form-control" id="memName" name="memName">
				</div><br>
								
					<button type="submit" class="btn btn-success">회원가입</button>
					<button type="button" class="btn btn-default" onclick="main()">목록</button>	
			</form>

  </div>
 </div>
</div>




<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

  
</body>
</html>
