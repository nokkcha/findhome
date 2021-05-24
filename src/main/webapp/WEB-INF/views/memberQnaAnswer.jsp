<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<style type="text/css">

.member-info-btn {
border: none;
padding: 10px;
width: 340px;
background: #DCD4D4;
}
.member-info-btn:hover {
	background: black;
	color: white;
	cursor: pointer;
}

.member-side-menu {
	border: 1px dashed gray;
	padding: 100px 10px;
	text-align: center;
	margin-right: 250px;
	margin-top: 30px;
	float: left;
}

.member-side-menu>a {
	display: block;
	margin: 20px;
	color: black;
	border-bottom: 1px solid gray;
}

.member-side-menu>a:hover {
	color: #f85959;
}


.ftco-section.contact-section.ftco-degree-bg{
	height: 80vh;
}
 

	table.type09 {
	  border-collapse: collapse;
	  text-align: center;
	  line-height: 1.5;
	
	}
	table.type09 thead th {
	  padding: 10px;
	  font-weight: bold;
	  vertical-align: top;
	  color: #F13A3A;
	  border-bottom: 3px solid #F3ABAB;
	}
	table.type09 tbody th {
	  width: 150px;
	  padding: 10px;
	  font-weight: bold;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	  background: #f3f6f7;
	}
	table.type09 td {
	  padding: 10px;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	}
	
	.type09 tbody tr:hover {
		cursor: pointer;
		background: #F5DBDB;
	}
	
	li.active {
		list-style: none;
	}
	
	.list-btn{
		
	}


</style>
<script
	src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

	<%@ include file="../views/top.jsp"%>

<input type="hidden" id="member_type" value=${mb.member_type }>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center"
					data-scrollax=" properties: { translateY: '70%' }">
					<p class="breadcrumbs"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">QNA List</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section contact-section ftco-degree-bg">
		<div class="container login">
			<div class="row d-flex mb-5 contact-info"></div>
			<script type="text/javascript">

				
			</script>
			
<script type="text/javascript">
	$(document).ready(function () { 
		var checkValue = $('#member_type').val();
		//alert(checkValue);
          console.log(checkValue);
				
	          if (checkValue == "seller") {
					$('#login').attr("action","<c:url value="/memberInfoPro2" />");
	
				} else {									
					$('#login').attr("action","<c:url value="/memberInfoPro" />");
				}
	});		
</script>




				<nav class="member-side-menu">
				
				<a href="./memberInfo" > 회원 정보 조회 </a>
				 <a href="#" style="font-weight: bold;"> 문의 목록 조회 </a>
				</nav>

			<div class="row block-9">
			
			
			
			
			
				<div class="pr-md-5">
				
			<h2> 문의 내용</h2>
					<!-- col-md-6 제거함 -->
					
		<table class="type09">
			<tr>
				<th class="qna-no"> No  </th>
				<th class="qna-id"> Room No  </th>
				 <th class="qna-sn"> Sender </th> 
			</tr>
			
			<tr>
				<td> ${qb.qna_id}  </td> <td> ${qb.room_id}  </td> <td> ${qb.sender} </td>
			</tr>
			
			<tr>
				<th colspan="3" class="qna-co"> Content </th>
			</tr>
			
			<tr>
				<td colspan="3" class="qna-ta-co"> ${qb.content} </td>
			</tr>
			
			<tr>
				<th colspan="3" class="qna-co"> Answer </th>
			</tr>
			
			<tr>
				<td colspan="3" class="qna-ta-co"> ${qb.answer} </td>
			</tr>
 
 
		</table>
	

				</div>

				<!--           <div class="col-md-6" id="map"></div> -->
			</div>
		</div>
		
		

		
		
		
		
		
	</section>


	    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">        
        <div class="row">
          <div class="col-md-12 text-center">
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


</body>
</html>