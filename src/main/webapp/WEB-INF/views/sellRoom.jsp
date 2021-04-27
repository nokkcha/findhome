<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<span class="mr-2"><a href="index.html">Home</a></span> <span>매물등록</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">신규
						매물등록</h1>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Column 1</h3>
      <p>Lorem ipsum dolor..</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 2</h3>
      <p>Lorem ipsum dolor..</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 3</h3>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
</div>

<!-- 	<section class="ftco-section ftco-degree-bg"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row d-flex mb-9 contact-info"></div> -->

<!-- 			<section class="ftco-section ftco-degree-bg"> -->
<!-- 				<div class="container"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-lg-12 sidebar"> -->
<!-- 							<div class="sidebar-wrap bg-light ftco-animate"> -->
<!-- 								<div> -->
<!-- 									<h3 class="heading mb-4">등록한 매물은 30일동안 노출됩니다.</h3> -->
<!-- 								</div> -->

<!-- 								<form action="#"> -->
<!-- 									<div class="fields"> -->
<!-- 										<div class="form-group"> -->
<!-- 											<div class="select-wrap one-third"> -->
<!-- 												거래종류 -->
<!-- 												<div class="form-group"> -->
<!-- 													<input type="button" -->
<!-- 														class="btn te btn-primary button-class1" value="전체"> -->
<!-- 													<input type="button" -->
<!-- 														class="btn te btn-default button-class2 rtype" value="월세"> -->
<!-- 													<input type="button" -->
<!-- 														class="btn te btn-default button-class3 rtype" value="전세"> -->
<!-- 												</div> -->

<!-- 												기본정보 -->
<!-- 												<div class="form-group"> -->
<!-- 													<input type="text" class="form-control" -->
<!-- 														placeholder="지역, 지하철역 검색"> -->
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<!-- 													<input type="button" -->
<!-- 														class="btn te btn-primary button-class11" value="전체"> -->
<!-- 													<input type="button" -->
<!-- 														class="btn te btn-default button-class12" value="지상층"> -->
<!-- 													<input type="button" -->
<!-- 														class="btn te btn-default button-class13" value="반지하,옥탑"> -->
<!-- 												</div> -->


<!-- 											</div> -->
<!-- 										</div> -->
										
<!-- 										<div class="form-group"> -->
<!-- 											보증금 -->
<!-- 											<div class="range-slider"> -->
<!-- 												<div class="Container"> -->
<!-- 													<font size=2 id="slider_value_view">0</font> <input -->
<!-- 														oninput='ShowSliderValue(this.value)' style="width: 80%;" -->
<!-- 														class="slider_range" type="range" value="0" min="0" -->
<!-- 														max="1000" step="100"> <font size=2 -->
<!-- 														id="slider_value_view2">0</font> <input -->
<!-- 														oninput='ShowSliderValue2(this.value)' type="range" -->
<!-- 														min='0' max='1000' value='100'> -->
<!-- 												</div>												 -->
<!-- 											</div> -->

<!-- 											월세 -->
<!-- 											<div class="range-slider"> -->
<!-- 												<span> 월세 <input type="number" value="25000" -->
<!-- 													min="0" max="120000" /> - <input type="number" -->
<!-- 													value="50000" min="0" max="120000" /> -->
<!-- 												</span> <input value="1000" min="0" max="120000" step="500" -->
<!-- 													type="range" /> <input value="50000" min="0" max="120000" -->
<!-- 													step="500" type="range" /> -->

<!-- 												</svg> -->
<!-- 											</div> -->

<!-- 										</div> -->

<!-- 										<div class="form-group"> -->
<!-- 											<input type="submit" value="Search" -->
<!-- 												class="btn btn-primary py-3 px-5"> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</form> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</section> -->
<!-- 		</div> -->
<!-- 	</section> -->


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
						All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
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