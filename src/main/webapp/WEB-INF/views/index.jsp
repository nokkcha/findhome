<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/findRoom.css">


<style type="text/css">
body {
	margin: 0;
	font-family: "Work Sans", -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
}

.ftco-navbar-light {
	top: 0px;
}

body {
	text-align: left;
}

.row {
	margin-left: -15px;
}

.form-control {
	width: 100%;
}

.container {
	padding: 20px 10px;
}

.speech-bubble {
	position: relative;
	background: #302c2c;
	border-radius: .4em;
}

.speech-bubble:after {
	content: '';
	position: absolute;
	bottom: 0;
	left: 50%;
	width: 0;
	height: 0;
	border: 32px solid transparent;
	border-top-color: #302c2c;
	border-bottom: 0;
	border-right: 0;
	margin-left: -16px;
	margin-bottom: -32px;
}
</style>

</head>
<body>

	<%@ include file="../views/top.jsp"%>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_1.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<strong>좋은 방을 <br></strong> 찾으시나요?
					</h1>

					<!--             <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Find great places to stay, eat, shop, or visit from local experts</p> -->

					<div class="container">
						<div class="btn-group" role="group" aria-label="...">
							<button type="button" class="btn btn-primary button-class1">원룸</button>
							<button type="button" class="btn btn-default button-class2">오피스텔</button>
						</div>
					</div>

					<div class="block-17 my-4">
						<form action="" method="post" class="d-block d-flex">
							<div class="fields d-block d-flex">
								<input type="text" class="form-control" id="address"
									placeholder="원하시는 지역명, 지하철역을 입력해주세요">
							</div>
							<input type="submit" class="search-submit btn btn-primary"
								value="Search">
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- 인기 매물 시작-->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-start">
				<!-- 				mb-5 pb-3 -->
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Special Offers</span>
					<h2 class="mb-4">
						<strong>인기</strong> 매물
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(${pageContext.request.contextPath}/resources/images/restaurant-1.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<h3>
								<a href="#">Luxury Restaurant</a>
							</h3>
							<p class="rate">
								<i class="icon-star"></i> <i class="icon-star"></i> <i
									class="icon-star"></i> <i class="icon-star"></i> <i
									class="icon-star-o"></i> <span>8 Rating</span>
							</p>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Discover</a></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(${pageContext.request.contextPath}/resources/images/restaurant-2.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<h3>
								<a href="#">Luxury Restaurant</a>
							</h3>
							<p class="rate">
								<i class="icon-star"></i> <i class="icon-star"></i> <i
									class="icon-star"></i> <i class="icon-star"></i> <i
									class="icon-star-o"></i> <span>8 Rating</span>
							</p>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Book Now</a></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(${pageContext.request.contextPath}/resources/images/restaurant-3.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<h3>
								<a href="#">Luxury Restaurant</a>
							</h3>
							<p class="rate">
								<i class="icon-star"></i> <i class="icon-star"></i> <i
									class="icon-star"></i> <i class="icon-star"></i> <i
									class="icon-star-o"></i> <span>8 Rating</span>
							</p>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Book Now</a></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(${pageContext.request.contextPath}/resources/images/restaurant-4.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<h3>
								<a href="#">Luxury Restaurant</a>
							</h3>
							<p class="rate">
								<i class="icon-star"></i> <i class="icon-star"></i> <i
									class="icon-star"></i> <i class="icon-star"></i> <i
									class="icon-star-o"></i> <span>8 Rating</span>
							</p>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Book Now</a></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--     인기매물 끝 -->

	<section class="ftco-section ftco-destination">
		<div class="container">
			<div class="row justify-content-start">
				<!--     		 mb-5 pb-3 -->
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Featured</span>
					<h2 class="mb-4">
						<strong>최신</strong> 매물
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="destination-slider owl-carousel ftco-animate">

						<!-- 					최신매물 아이템 출력 시작 -->
						<c:forEach items="${obList}" var="roomList" varStatus="i">

							<div class="destination">
								<a
									href='<c:url value="/detailView?room_id=${roomList.room_id}" />'
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath}/resources/upload${roomList.file_name});"></a>

								<div class="text p-3">

									<div class="text-mi">
										<div class="d-flex">
											<div class="one">
												<h3>
													<a
														href='<c:url value="detailView?room_id=${roomList.room_id}" />'>
														${roomList.subject} </a>
												</h3>
											</div>
											<div class="two">
												<span class="price per-price"><small>${roomList.deposit}
														/ ${roomList.monthly_rent}</small></span>
											</div>
										</div>
										<p>${roomList.address }</p>

									</div>

									<hr>
									<p class="bottom-area d-flex">
										<input type="hidden"
											value="<c:out value='${roomList.room_id}'/>" id="room_id">

										<button id="zzim-id-${roomList.room_id}"
											class="text-zzim nozzim">

											<c:forEach var="wishList" items="${wishList }">

												<c:if test="${roomList.room_id == wishList.wish}">
													<span class="zzim-showtext"
														id="zzim-ok-${roomList.room_id}"></span>
												</c:if>

											</c:forEach>

										</button>

										<span class="ml-auto call"><a
											href="javascript:void(0);">call</a></span> <input type="hidden"
											value="<c:out value='${roomList.phone_number}'/>"
											id="phone_number">

									</p>
									<div class="modal">
										<div class="modal_content" title="클릭하면 창이 닫힙니다."></div>
									</div>



								</div>
							</div>

						</c:forEach>
						<!-- 					최신매물 아이템 출력 끝 -->

					</div>
				</div>
			</div>
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
	<!-- 	<div id="ftco-loader" class="show fullscreen"> -->
	<!-- 		<svg class="circular" width="48px" height="48px"> -->
	<!-- 			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" /> -->
	<!-- 			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg> -->
	<!-- 	</div> -->

	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js">		
	</script>

	<script>
		$(document)
				.ready(
						function() {
							$('.button-class1').click(
									function() {
										$("#address").val('');
										$("#address").attr("placeholder",
												"원하시는 지역명, 지하철역을 입력해주세요");

										if ($(this).hasClass('btn-default'))
											$(this).removeClass('btn-default');
										if (!$(this).hasClass('btn-primary'))
											$(this).addClass('btn-primary');
										if ($('.button-class2').hasClass(
												'btn-primary'))
											$('.button-class2').removeClass(
													'btn-primary');
										if (!$('.button-class2').hasClass(
												'btn-default'))
											$('.button-class2').addClass(
													'btn-default');
									});

							$('.button-class2').click(
											function() {
												$("#address").val('');
												$("#address")
														.attr("placeholder",
																"원하시는 지역명, 지하철역, 오피스텔명을 입력해주세요");

												if ($(this).hasClass(
														'btn-default'))
													$(this).removeClass(
															'btn-default');
												if (!$(this).hasClass(
														'btn-primary'))
													$(this).addClass(
															'btn-primary');
												if ($('.button-class1')
														.hasClass('btn-primary'))
													$('.button-class1')
															.removeClass(
																	'btn-primary');
												if (!$('.button-class1')
														.hasClass('btn-default'))
													$('.button-class1')
															.addClass(
																	'btn-default');
											});
							
							// 목록 - [찜하기] 클릭
				        	$('.text-zzim').click(function(){
				        		var room_id = $(this).parent().children("#room_id")[0].value;
				        		
				        	 	$.ajax('<c:url value="/zzim" />',{
				        	 		data:{wish:room_id},
				        	 		success:function(rdata){
				        	 			
				        	 			if(rdata=="zzim"){
				        	 				rdata = "찜";
				        	 				$('#zzim-id-'+room_id).removeClass('nozzim');
				        	 				$('#zzim-id-'+room_id).addClass('zzim');
				        	 				$('#zzim-ok-'+room_id).addClass('zzim-showtext');

				        	 			}else if(rdata=="nozzim"){
				        	 				rdata = "찜안함";
				                	        $('#zzim-id-'+room_id).removeClass('zzim');
				        	 				$('#zzim-id-'+room_id).addClass('nozzim');
				        	 				$('#zzim-ok-'+room_id).removeClass('zzim-showtext');
				        	 			}
				        	 			var resultData = decodeURIComponent( rdata );
				        	 			alert(resultData);	
				        	 		}
				        	 	});

				        	});
							
						});
	</script>


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
	<%--   <script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<%--   <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>