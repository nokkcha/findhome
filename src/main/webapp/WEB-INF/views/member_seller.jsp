<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/findRoom.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member_seller.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
    
  
  </head>
  <body>

  
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light01" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="./">FindHome</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>


		<nav class="navbar navbar-expand-lg navbar-dark">
			<div class="container-fluid">

				<!-- navbar-collapse.// -->
			</div>
			<!-- container-fluid.// -->
		</nav>
		
				<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">

						<li class="nav-item dropdown"><a class="nav-link" href="#" data-bs-toggle="dropdown"> 관리페이지 </a>
				<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="./findRooms"> 대시보드 </a></li>
								<li><a class="dropdown-item" href="./findRooms-zzim"> 매물관리 </a></li>
								<li><a class="dropdown-item" href="./sellRoom?category=OneRoom"> 문의관리 </a></li>
								<li><a class="dropdown-item" href="./sellRoom?category=OneRoom"> 고객센터 </a></li>
							</ul>
				</li>
				<li class="nav-item"><a href='<c:url value="/join_choice" />' class="nav-link">로그아웃</a></li>


			</ul>
		</div>
		
		
		
</div>
</nav>


    
<div class="seller-side"> 

	<nav>
		<a href="#" style="color: black;"> 대시보드</a>
		<a href="#"> 매물관리 </a>
		<a href="#"> 문의관리 </a>
		<a href="#"> 고객센터 </a>
	
	</nav>


</div>

    <section class="seller-wrap">
    
    
    	<div class="sell-bottom">
		여기 그래프 올 예정 <br>
		올린 매물 (원룸/오피스텔)
	
		</div>
    	
		<div class="seller-sell">
		<span class="sell-text"> 최신 매물</span> <br>
			<table class="sell-table" border="1">
				<tr class="sell-ta-th"> 
					<td  class="sell-ta-no"> No </td>
					<td  class="sell-ta-ca"> Category </td>
					<td  class="sell-ta-sub"> Subject </td>
					<td  class="sell-ta-de"> Deposit  </td>
					<td  class="sell-ta-re"> Monthly Rent  </td>
				</tr>
				
				<tr> 
					<td> 1 </td>
					<td> OneRoom </td>
					<td> 제목입니다</td>
					<td> 1000</td>
					<td> 30</td>
				</tr>	
				
				<tr> 
					<td> 2 </td>
					<td> OneRoom </td>
					<td> 제목입니다</td>
					<td> 1000</td>
					<td> 30</td>
				</tr>	
				
				<tr> 
					<td> 3 </td>
					<td> OneRoom </td>
					<td> 제목입니다</td>
					<td> 1000</td>
					<td> 30</td>
				</tr>	
				
				<tr> 
					<td> 4 </td>
					<td> OneRoom </td>
					<td> 제목입니다</td>
					<td> 1000</td>
					<td> 30</td>
				</tr>	
				
				<tr> 
					<td> 5 </td>
					<td> OneRoom </td>
					<td> 제목입니다</td>
					<td> 1000</td>
					<td> 30</td>
				</tr>	
	
			
			</table>
	
		</div>
    
	<div class="seller-mail">
    <span class="sell-text"> 최신 문의</span> <br>
		<table class="sell-table" border="1">
			<tr class="sell-ta-th"> 
				<td  class="sell-ta2-no"> No </td>
				<td  class="sell-ta2-id"> ID </td>
				<td  class="sell-ta2-sub"> Subject </td>
			</tr>
			
			<tr> 
				<td> 1 </td>
				<td> 00@naver.com</td>
				<td> 제목입니다</td>
			</tr>
			
			<tr> 
				<td> 2 </td>
				<td> 00@naver.com </td>
				<td> 어쩌고어쩌고어쩌고어쩌고</td>
			</tr>
			
			<tr> 
				<td> 3 </td>
				<td> 00@naver.com </td>
				<td> 제목입니다제목입니다제목입니다 </td>
			</tr>
			
			<tr> 
				<td> 4 </td>
				<td> 00@naver.com </td>
				<td> 제목123</td>
			</tr>
			
			<tr> 
				<td> 5 </td>
				<td> 00@naver.com </td>
				<td> 어쩌고 제목입니다 저쩌고 </td>
			</tr>
		
		</table>
	</div>
	
	
	</section>
	




  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
  
  
<script src="../script/jquery-3.6.0.js"></script>


  
  
  </body>
</html>