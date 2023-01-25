<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <!-- 파비콘 -->
  <link rel="shortcut icon" href="<c:url value='${cpath}/resources/images/favicon.ico'/>" type="image/x-icon"/>
  <link rel="icon" href="<c:url value='${cpath}/resources/images/favicon.ico'/>" type="image/x-icon"/> 


</head>
<body>


<c:redirect url="/main.do" />

</body>
</html>