<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<script
	src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>

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
				function checkPassword() {
					var pass1 = $('#pass1').val();

					var lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;
					var alphabetUpperRegex = /[A-Z]/; // 대문자 판별
					var alphabetLowerRegex = /[a-z]/; // 소문자 판별
					var numberRegex = /[0-9]/; // 숫자 판별
					var specRegex = /[!@#$%]/; // 특수문자(!@#$%) 판별		
					var element = document
							.getElementById('checkPasswordResult');
					
					if (lengthRegex.exec(pass1)) {
						var point = 0;
						if (alphabetUpperRegex.exec(pass1)) {
							point = point + 1;
						}
						if (alphabetLowerRegex.exec(pass1)) {
							point = point + 1;
						}
						if (numberRegex.exec(pass1)) {
							point = point + 1;
						}
						if (specRegex.exec(pass1)) {
							point = point + 1;
						}

						switch (point) {
						case 4:
							element.innerHTML = "안전";
							break;
						case 3:
							element.innerHTML = "보통";
							break;
						case 2:
							element.innerHTML = "위험";
							break;
						default:
							element.innerHTML = "사용불가";
						    break;
						}
					} else {
						element.innerHTML = "사용불가";
					}
				}
				
				$(document).ready(function() {
					$('#login').submit(function() {

						var id = $('#id').val();
						var pass1 = $('#pass1').val();
						var pass2 = $('#pass2').val();
						var phone = $('#phone').val();
						
						
						if (id == "") {
							$('#id').focus();
							alert('아이디를 입력하세요');
							return false;
						}
						if (pass1 == "") {
							$('#pass1').focus();
							alert('패스워드를 입력하세요');
							return false;
						}
						if (pass2 == "") {
							$('#pass2').focus();
							alert('패스워드 확인을 입력하세요');
							return false;
						}
						if (phone == "") {
							$('#phone').focus();
							alert('전화번호를 입력하세요');
							return false;
						}

					});
				});
			</script>
			<h2>회원가입</h2>
			<div class="row block-9">
				<div class="pr-md-5">
					<!-- col-md-6 제거함 -->
					<form action="#" id="login">
						<div class="form-group" align="left">
							<label class="form-control-label">아이디</label> <input type="email"
								class="form-control" name="id" id="id">

						</div>
						<div class="form-group" align="left">
							<label class="form-control-label">비밀번호</label><input
								type="password" class="form-control" name="pass1" id="pass1"
								onkeyup="checkPassword()"><span id="checkPasswordResult"></span>
						</div>
						<div class="form-group" align="left">
							<label class="form-control-label">비밀번호 확인</label><input
								type="password" class="form-control" name="pass2" id="pass2">
						</div>
						<div class="form-group" align="left">
							<label class="form-control-label">휴대폰 번호</label><input type="tel"
								class="form-control" name="phone" id="phone">
						</div>
						<div>
							<label> <input type="checkbox" name="agreement"
								onclick="checkagr()" /> <span><b>이용약관</b> 및 개인정보 취급방침에
									동의합니다.</span>
							</label>
						</div>
						<div class="form-group">
							<input type="submit" value="회원가입"
								class="btn btn-primary py-3 px-5" id="btn">
						</div>
					</form>

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