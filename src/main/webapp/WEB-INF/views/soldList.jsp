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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
  
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
									<li><a class="dropdown-item" href="./member_seller"> 대시보드 </a></li>
									<li><a class="dropdown-item" href="./SalesList"> 매물관리 </a></li>
									<li><a class="dropdown-item" href="./"> 문의관리 </a></li>
									<li><a class="dropdown-item" href="./"> 고객센터 </a></li>
								</ul>
					</li>
					<li class="nav-item"><a href='<c:url value="/logout" />' class="nav-link">로그아웃</a></li>
	
	
				</ul>
			</div>
			
		</div>
	</nav>


    
	<div class="seller-side"> 
	
		<nav>
			<a href="./member_seller" class="nav-side"> 대시보드</a>

		<div class="sell-dropdown">
		  <a class="dropbtn nav-side" style="color: black;">매물관리</a>
		  <div class="dropdown-content">
		    <a href="./salesList">판매 중인 매물</a>
		    <a href="./soldList">판매 완료 매물</a>
		  </div>
		</div>
			
			<a href="#"  class="nav-side"> 문의관리 </a>
			<a href="#"  class="nav-side"> 고객센터 </a>
		
		</nav>
	
	
	</div>

    <section class="seller-wrap">
    
    		 <div class="chart-div">
		    <canvas id="pieChartCanvas" width="300px" height="300px"></canvas>
		    <span class="chart-text"> 
		   	 <span class="chart-text-point"> 매물 현황  </span><br>
			    판매 중 : ${salesCount} 개 <br>
			    판매 완료 : ${soldCount } 개 <br>
		    </span>
		    
		  </div>  

		   

		<div class="seller-sell">
		<span class="sell-text"> 판매 완료 매물</span> <br>
		<table class="type09">
			<thead>
				<tr>
					<th class="sell-ta-no"> No </th>
					<th class="sell-ta-ca"> Category </th>
					<th class="sell-ta-sub"> Subject </th>
					<th class="sell-ta-de"> Deposit  </th>
					<th class="sell-ta-re"> Monthly Rent  </th>
				 </tr>
			</thead>
			  
			<tbody>
	       		<c:forEach var="roomList" items="${roomList }">
					
				<tr onclick="location.href='<c:url value="detailView?room_id=${roomList.room_id}"/>'"> 
					<td> ${roomList.room_id} </td>
					<td> ${roomList.category} </td>
					<td> ${roomList.subject}</td>
					<td> ${roomList.deposit} </td>
					<td> ${roomList.monthly_rent} </td>
					<td> 
					</td>
				</tr>
				
				</c:forEach>

			  </tbody>
			  
		</table>
		
	
		</div>

          	<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27-page">
		              <ul>
		                <c:if test="${pb.startPage > pb.pageBlock }">
		                <li> <a href='<c:url value="soldList?pageNum=${pb.startPage-pb.pageBlock}" />'>&lt;</a></li>
					</c:if>
					<c:forEach var="i" begin="${pb.startPage }" end="${pb.endPage}" step="1">
		                <li class="active"><span> <a href='<c:url value="soldList?pageNum=${i}" />'>${i}</a> </span></li>
					</c:forEach>
					<c:if test="${pb.endPage < pb.pageCount }">
		                <li><a href='<c:url value="soldList?pageNum=${pb.startPage+pb.pageBlock}" />'>&gt;</a></li>
					</c:if>
		              </ul>
		            </div>
		          </div>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
  
  
<script src="../script/jquery-3.6.0.js"></script>
<script type="text/javascript">
      
      window.onload = function () {
    	    pieChartDraw();
    	}

    	let pieChartData = {
    			
    	    labels: ['판매중', '판매완료'],
    	    datasets: [{
    	        backgroundColor: ['#F18181', '#8ADCB0'],
    	        data: [${salesCount}, ${soldCount}]
    	    }] 
    	};

    	let pieChartDraw = function () {
    	    let ctx = document.getElementById('pieChartCanvas').getContext('2d');
    	    
    	    window.pieChart = new Chart(ctx, {
    	        type: 'pie',
    	        data: pieChartData,
    	        options: {
    	            responsive: false
    	        }
    	    });
    	};
      
      
      </script>


  
  
  </body>
</html>