<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html lang="en">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
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
						<span class="mr-2"><a href="index.html">Home</a></span> <span>Contact</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Contact
						Us</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section contact-section ftco-degree-bg">
		<div class="container login">
			<div class="row d-flex mb-5 contact-info"></div>
			<script type="text/javascript">
			
			
				
				$(document).ready(function() {
					
					$('#login').submit(function() {

						
						var checkIdResult = document.getElementById('checkIdResult');
						var checkResult = document.getElementById('checkPasswordResult');
						
						if ($('#id').val() == "") {
							$('#id').focus();
							checkIdResult.innerHTML = "<font color='#FF0000'>아이디를 입력하세요.</font>";						
							return false;
						}
						
						
						if ($('#password').val() == "") {
							$('#password').focus();
							checkResult.innerHTML = "<font color='#FF0000'>비밀번호를 입력하세요.</font>";	
							return false;
						}
						
						
					});
				});
				
			</script>
			
			<input type="radio" id="member_type_select" name="member_type_select" value="일반">일반
			<input type="radio" id="member_type_select" name="member_type_select" value="사업자">사업자<br>
						
			<h2>로그인</h2>
			<div class="row block-9">
				<div class="pr-md-5">
					<!-- col-md-6 제거함 -->
					<form action=<c:url value="/loginPro" /> id="login" name="login"  method="post" >
						<div class="form-group" align="left">
							<label class="form-control-label">아이디</label> <input type="text"
								class="form-control" name="id" id="id"  value="test" 
								onkeyup="checkId()">
								
							<br><span class="check-group" id="checkIdResult"></span>	

						</div>
						<div class="form-group" align="left">
							<label class="form-control-label">비밀번호</label><input
								type="password" class="form-control" name="password" id="password" value="1234"
								onkeyup="checkPassword()">
								
						  <br><span class="check-group" id="checkPasswordResult"></span>
						</div>
						
						<div class="form-group">
							<input type="submit" value="로그인"
								class="btn btn-primary py-3 px-5" id="btn">
						</div>
				<a href="https://kauth.kakao.com/oauth/authorize?client_id=c8b68959528f17086eb38f6bc7df7c75&redirect_uri=http://localhost:8080/auth/kakao/callback&response_type=code"><img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222"/></a>
				
				
					</form>

  <input type="button" name="radioTxt" id="radioTxt" value="Banana">Banana


				</div>

				<!--           <div class="col-md-6" id="map"></div> -->
			</div>
		</div>
	</section>
	
	
	 <script type="text/javascript">
      $(document).ready(function () {
    	  
    	  
    	  $("input[name=member_type_select]").change(function(){
          var checkValue = $('input[name="member_type_select"]:checked').val();
          console.log(checkValue);
												if (checkValue == "일반") {
														$('#login')
																.attr("action",
																		"<c:url value="/loginPro" />");

													} else {									
														$('#login')
																.attr("action",
																		"<c:url value="/loginPro2" />");
													}
												});
							});
		</script>
	

<!-- 	</script> -->


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