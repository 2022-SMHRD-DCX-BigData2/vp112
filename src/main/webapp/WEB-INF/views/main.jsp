<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">	
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
  <!-- 파비콘 -->
  <link rel="icon" href="${cpath}/resources/images/favicon.png">
  <title>메인페이지 입니다</title>

  
</head>
<body style="height: 100%;">


<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

<br><br>

<div class="d-flex justify-content-evenly">
  <div class="d-flex align-items-center" style="width: 400px; height: 300px;">
	<!--차트가 그려질 부분-->
	<canvas id="myChart"></canvas>
  </div>

  <div class="d-flex align-items-center" style="width: 400px; height: 300px;">
	<!--차트가 그려질 부분-->
	<canvas id="myChart2"></canvas>
  </div>
</div>

<br><br>

<div class="col" style="display:flex; justify-content: center; align-items: center;">
  <div class="col" style="display: flex; justify-content: center; align-items: center;">
    <br><br><br><br>
	<div class="container" style="width: 33%;">
		<br>
		<a href="${cpath}/questionMain.do" class="Qbtn Qbtn-btn1">VP모의체험</a>
		<br><br>
	</div>
	<br><br>
	<div class="container" style="width: 33%;">
		<br>
		<a href="${cpath}/sub.do" class="Qbtn Qbtn-btn1">VP확률검사</a>
		<br><br>
	</div>
	<br><br>
	<div class="container" style="width: 33%;">
		<br>
		<a href="${cpath}/CmBoard.do" class="Qbtn Qbtn-btn1">금융커뮤니티</a>
		<br><br>
	</div>
	<br><br><br><br>
  </div>
</div>

<!-- footer.jsp 메뉴불러오기 -->
<%@ include file="footer.jsp" %>

<script type="text/javascript">
    var context = document
        .getElementById('myChart')
        .getContext('2d');
    var myChart = new Chart(context, {
        type: 'bar', // 차트의 형태
        data: { // 차트에 들어갈 데이터
            labels: [
                //x 축
                '1','2','3','4','5','6','7'
            ],
            datasets: [
                { //데이터
                    label: 'test1', //차트 제목
                    fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                    data: [
                        21,19,25,20,23,26,25 //x축 label에 대응되는 데이터 값
                    ],
                    backgroundColor: [
                        //색상
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)'
                    ],
                    borderColor: [
                        //경계선 색상
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1 //경계선 굵기
                }
            ]
        },
        options: {
            scales: {
                yAxes: [
                    {
                        ticks: {
                            beginAtZero: true
                        }
                    }
                ]
            }
        }
    });
    var context = document
        .getElementById('myChart2')
        .getContext('2d');
    var myChart2 = new Chart(context, {
        type: 'line', // 차트의 형태
        data: { // 차트에 들어갈 데이터
            labels: [
                //x 축
                '1','2','3','4','5','6','7'
            ],
            datasets: [
                { //데이터
                    label: 'test2', //차트 제목
                    fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                    data: [
                        21,19,25,20,23,26,25 //x축 label에 대응되는 데이터 값
                    ],
                    backgroundColor: [
                        //색상
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)'
                    ],
                    borderColor: [
                        //경계선 색상
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1 //경계선 굵기
                }
            ]
        },
        options: {
            scales: {
                yAxes: [
                    {
                        ticks: {
                            beginAtZero: true
                        }
                    }
                ]
            }
        }
    });
    
</script>

</body>
</html>
