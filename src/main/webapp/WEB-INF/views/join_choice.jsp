<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<!--     가입페이지 스타일시트링크 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style_greet.css">

<style type="text/css">
.ftco-navbar-light {
	background-color: #000 !important;
	top: 0 !important;
}
.clear {
	margin: 5em;
}
</style>

</head>
<body>

	<!--     메뉴(네비게이션) 시작 -->
	<%@ include file="../views/top.jsp"%>

	<!-- END nav -->

	<section class="clear">

		<div class="box_greet">
			<h3 class="greet">
				안녕하세요, 환영합니다.<br>가입하시기 전에 골라주세요.
			</h3>
		</div>

		<div class="select_area">
			<a href="http://localhost:8080/findhome/join">
				<div class="box_select">
					<!-- <input type="radio" name="join_type" value="세입자"> -->
					<div class="circle">
						<span class="txt1">세입자</span>
					</div>
				</div>
			</a> <a href="http://localhost:8080/findhome/join">
				<div class="box_select">
					<!-- <input type="radio" name="join_type" value="세입자"> -->
					<div class="circle">
						<span class="txt2">중개인 가입<br>호스트 가입<br></span>
					</div>
				</div>
			</a>
		</div>

	</section>




	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js">
		
	</script>


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
	<%--   <script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<%--   <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>