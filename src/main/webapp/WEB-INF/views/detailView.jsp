<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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



<style type="text/css">

#tableoption {
	width: 100%;

}

#tableoption tr,td {
	border-style: none;
}

#table {
	table-layout: fixed;
}

#map img {
	max-width: none;
	height: auto;
	border: 0
}

#btn01 {
	margin-bottom: 10px;
}

#btn02 {
	margin-bottom: 10px;
}

#btn03 {
	margin-bottom: 10px;
}

#contact-btn {
	margin-top: 10px;
}




#roomtable {
	width: 100%;
	border-collapse: collapse;
}

#roomtable th, td {
	padding: 10px;
	text-align: center;
}

h4 {
	text-align: center;
}
.option-info-container {
	padding: 50px 100px 50px 100px;
	border-top: 1px solid #dddddddd;

}

.room-detail-option-item-wrapper {
	margin-top: 40px;
	display: flex;
}

.room-detail-content-option-item {
	text-align: center;
	flex: 1;
}

.room-detail-content-option-item>img {
	width: 60px;
}

.room-detail-content-option-item-name {
	margin-top: 15px;
	text-align: center;
	font-size: 15px;
}

.room-detail-option-title {
	font-size: 27px;
	text-align: center;
}

.room-contact-container {
	margin-top: 25px;
	border-top: 1px solid #dddddddd;
}

.map-container {
	padding-top: 50px;
	padding-bottom: 50px;
	border-top: 1px solid #dddddddd;
}

.map-container #map { /* border:1px solid red;  */
	margin-left: auto !important;
	margin-right: auto !important;
}

.info-container {
	text-align: left;
}

.btn btn-secondary>a:visited {
	color: white;
}

.btn btn-secondary>a:link {
	color: white;
}

.zzim:before {
	content: "💓 찜한 매물";
	color: #f85959;
	font-weight: bold;
}

.zzim:hover:before {
	content: "🤍 찜하기 취소";
	cursor: pointer;
	color: black;
	font-weight: normal;
}

.nozzim:before {
	content: "🤍 찜하기";
}

.nozzim:hover:before {
	content: "💓 찜하기";
	cursor: pointer;
	color: #f85959;
	font-weight: bold;
}

.te {
	background-color: white;
	display: inline-block;
}

.te:hover {
	color: #f85959;
}

.sidebar-wrap .fields .select-wrap2 {
	position: relative;
	margin-right: 10px;
}

.modal-background {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.8);
}

.modal-content {
	display: none;
	position: absolute;
	top: calc(50vh - 100px);
	left: calc(50vw - 200px);
	background-color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 10px;
	width: 400px;
	height: 200px;
}

.mb-5 {
	text-align: center !important;
}
</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>

	<%@ include file="../views/top.jsp"%>

	<div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
					<p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<span class="mr-2"><a href="index.html">원룸</a></span>
					</p>
					<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">매물 상세</h1>
				</div>
			</div>
		</div>
	</div>



	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 sidebar">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h3 class="heading mb-4">검색 조건 설정</h3>
						<form action="#">
							<div class="fields">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="지역, 지하철역 검색">
								</div>
								<div class="form-group">
									<div class="select-wrap one-third">

										계약 구분
										<div class="form-group">
											<input type="button" class="btn te btn-primary rentAll" value="전체"> <input type="button" class="btn te btn-default rentMonthly" value="월세"> <input type="button" class="btn te btn-default rentJeonse" value="전세">
										</div>

										구조
										<div class="form-group">
											<input type="button" class="btn te btn-primary rtypeAll" value="전체"> <input type="button" class="btn te btn-default rtypeOpen rtype" value="오픈형"> <input type="button" class="btn te btn-default rtypeSeparate rtype" value="분리형"> <input type="button" class="btn te btn-default rtypeStairs rtype" value="복층형">
										</div>

										층 수 옵션
										<div class="form-group">
											<input type="button" class="btn te btn-primary ftypeAll" value="전체"> <input type="button" class="btn te btn-default floor" value="지상층"> <input type="button" class="btn te btn-default ftypeOther" value="반지하,옥탑">
										</div>


									</div>
								</div>

								<div class="form-group">
									보증금
									<div class="range-slider">

										<div class="Container">
											<font size=2 id="slider_value_view1">0</font> <input oninput='ShowSliderValue1(this.value)' style="width: 100%;" class="slider_range1" type="range" step="100" value="0" min="0" max="50000"></input> <font size=2 id="slider_value_view2">0</font> <input oninput='ShowSliderValue2(this.value)' style="width: 100%;" class="slider_range2" type="range" step="100" value="0" min="0" max="50000"></input>
										</div>

										</svg>
									</div>

									월세
									<div class="range-slider">

										<div class="Container2">
											<font size=2 id="slider_value_view3">0</font> <input oninput='ShowSliderValue3(this.value)' style="width: 100%;" class="slider_range3" type="range" step="10" value="0" min="0" max="500"></input> <font size=2 id="slider_value_view4">0</font> <input oninput='ShowSliderValue4(this.value)' style="width: 100%;" class="slider_range4" type="range" step="10" value="0" min="0" max="500"></input>
										</div>
										</svg>
									</div>
									<script language="javascript">
										function ShowSliderValue(sVal) {
											var obValueView = document
													.getElementById("slider_value_view");
											obValueView.innerHTML = sVal
										}

										function ShowSliderValue(sVal) {
											var obValueView = document
													.getElementById("slider_value_view2");
											obValueView.innerHTML = sVal
										}

										var RangeSlider = function() {
											var range = $('.slider_range');

											range.on('input', function() {
												ShowSliderValue(this.value);
											});
										};

										RangeSlider();
									</script>






								</div>




								<div class="form-group">
									<input type="submit" value="Search" class="btn btn-primary py-3 px-5">
								</div>
							</div>
						</form>
					</div>

				</div>

				<!-- 이미지 슬라이더 -->

				<div class="col-lg-9">
					<div class="row">
						<div class="col-md-12 ftco-animate">
							<div class="single-slider owl-carousel">
								<div class="item">
									<div class="hotel-img">
										<img src='<c:url value="/resources/upload/${ob.file_name}" />'>
									</div>

								</div>
								<div class="item">
									<div class="hotel-img">
										<img src="${pageContext.request.contextPath}/resources/images/room-5.jpg">
									</div>
								</div>
								<div class="item">
									<div class="hotel-img">
										<img src="${pageContext.request.contextPath}/resources/images/room-6.jpg">
									</div>
								</div>
							</div>

						</div>




						<div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
							<div class="info-container">
								<span>원룸/월세 </span>
								<h2>${ob.subject }</h2>

								<p class="rate mb">
									<span class="loc"><a href="#map-info"><i class="icon-map"></i> ${ob.address }</a></span><br> <span class="text-zzim icon-like nozzim"></span>
									<!-- 										<span class="text-zzim icon-like zzim"></span> -->
								<h6 style="text-align: left;">
									<i class="fas fa-user" style="width: 20; height: 20"></i> ${ob.seller_id }
								</h6>

								<div>

									<button type="button" id="btn-call" class="btn btn-secondary" style="float: left; margin-right: 0.5em;">전화하기</button>

									<!-- Modal -->

									<div class="modal-background" id="modal-content">
										<div class="modal-content" id="modal-content">
											웹에서 전화걸기<br> ${ob.phone_number }<br>
											<button type="button" id="btn-close" class="btn btn-secondary">닫기</button>
										</div>
									</div>


									<button type="button" class="btn btn-secondary" style="float: left;">채팅하기</button>

								</div>

							</div>
						</div>
					</div>

					<div class="d-md-flex mt-5 mb-5">
						<table id=roomtable>
							<thead>
								<tr>
									<th>방 형태</th>
									<td>${ob.room_type }</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>보증금</th>
									<td>${ob.deposit}만원</td>
								</tr>
								<tr>
									<th>월세</th>
									<td>${ob.monthly_rent}만원</td>
								</tr>
								<tr>
									<th>관리비</th>
									<td>${ob.fees}만원</td>
								</tr>
<!-- 								<tr> -->
<!-- 									<th>관리비 포함_내역</th> -->
<%-- 									<td><c:forEach items="${ob.include_fees_array }" var="list"> --%>
<%-- 											<div>${list}</div> --%>
<%-- 										</c:forEach></td> --%>
<!-- 								</tr> -->
								<tr>
									<th>대출 여부</th>
									<td>${ob.loan}</td>
								</tr>
								<tr>
									<th>면적</th>
									<td>${ob.exclusive_area_m }m<sup>2</sup>(${ob.exclusive_area_p }평)
									</td>
								</tr>
								<tr>
									<th>건물 층수</th>
									<td>${ob.living_floor}</td>
								</tr>
								<tr>
									<th>방향</th>
									<td>${ob.direction}</td>
								</tr>
								<tr>
									<th>입주 가능일</th>
									<td>${ob.m_date}</td>
								</tr>
								<tr>
									<th>엘리베이터</th>
									<td>${ob.elevator}</td>
								</tr>

								<tr>
									<th>주차장</th>
									<td>${ob.parking}</td>
								</tr>

								<tr>
									<th>반려동물</th>
									<td>${ob.pet }</td>
								</tr>
							</tbody>
						</table>

					</div>
					<div class="map-container" id="map-info">
						<h4 class="mb-5">상세 설명</h4>
						<div class="mb-5">${ob.content }</div>
					</div>
					<br>

					<div class="option-info-container">
						<h4 class="mb-5">관리비 포함 항목</h4>

						<div class="room-detail-option-item-wrapper">

							<c:forEach items="${ob.include_fees}" var="list">
								<div class="room-detail-content-option-item">
									<img src="${pageContext.request.contextPath}/resources/images/fees/${list.value}.png" width="50" height="50">
									<div class="room-detail-content-option-item-name">${list.key}</div>
								</div>
							</c:forEach>
						</div>
					</div>

<br><br>
					<div class="option-info-container">
						<!-- 								<div class="room-detail-option-title">옵션</div> -->


						
						<h4 class="mb-5">옵션</h4>

						<div class="room-detail-option-item-wrapper">
							
							<table id="tableoption">
							<tr>
							<c:forEach items="${ob.include_options }" var="list" varStatus="status">
							<c:if test="${status.index%6==0 }">
							</tr><tr>
							</c:if>
								<div class="room-detail-content-option-item">
								
									<td><img src="${pageContext.request.contextPath}/resources/images/options/${list.value}.png" width="50" height="50">
									<div class="room-detail-content-option-item-name">${list.key}</div></td>
									
								</div>
								
							</c:forEach>
							</tr>
							</table>
						</div>
					</div>

					<br>

					<div class="map-container" id="map-info">
						<h4 class="mb-5">위치 정보</h4>
						<h6 class="mb-5">${ob.address }</h6>
						<div id="map" style="width: 500px; height: 400px;">




							<!-- 						<script type="text/javascript" -->
							<!-- 							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e97625a0c2b00cdf9292bd703ece0f7"></script> -->
							<!-- 						<script> -->

							<!-- services 라이브러리 불러오기 -->
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e97625a0c2b00cdf9292bd703ece0f7&libraries=services,clusterer,drawing">
								
							</script>

							<script>
								var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center : new kakao.maps.LatLng(33.450701,
											126.570667), // 지도의 중심좌표
									level : 3
								// 지도의 확대 레벨
								};

								// 지도를 생성합니다    
								var map = new kakao.maps.Map(mapContainer,
										mapOption);

								// 주소-좌표 변환 객체를 생성합니다
								var geocoder = new kakao.maps.services.Geocoder();

								// 주소로 좌표를 검색합니다
								geocoder
										.addressSearch(
												'서울특별시 영등포구 여의동로 330 한강사업본부 여의도안내센터',
												function(result, status) {

													// 정상적으로 검색이 완료됐으면 
													if (status === kakao.maps.services.Status.OK) {

														var coords = new kakao.maps.LatLng(
																result[0].y,
																result[0].x);

														// 결과값으로 받은 위치를 마커로 표시합니다
														var marker = new kakao.maps.Marker(
																{
																	map : map,
																	position : coords
																});

														// 인포윈도우로 장소에 대한 설명을 표시합니다
														var infowindow = new kakao.maps.InfoWindow(
																{
																	content : '<div style="width:150px;text-align:center;padding:6px 0;">${ob.subject}</div>'
																});
														infowindow.open(map,
																marker);

														// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
														map.setCenter(coords);
													} else {
														alert("주소변환실패");
													}
												});
							</script>

						</div>
					</div>





					<form action='<c:url value="/mailpro"/>' method="post">
						<div class="room-contact-container">
							<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
								<h4 class="mb-5">매물 문의하기 &amp; 상담예약</h4>
								<div class="fields">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" class="form-control" placeholder="이름" name="name">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" class="form-control" placeholder="휴대폰 번호" name="phone">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<input type="text" id="checkin_date" class="form-control" placeholder="방문하실 날짜" name="date1">
											</div>
										</div>


										<div class="col-md-12">
											<div class="form-group">
												<a class="btn btn-secondary py-3" id="contact-content" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample"> 문의할 내용 </a>
											</div>

											<div class="collapse" id="collapseExample">
												<div class="card card-body">
													<input type="button" class="btn btn-light" id="btn01" value="이 집 볼 수 있나요?"> <input type="button" class="btn btn-light" id="btn02" value="비슷한 조건의 다른 집이 있나요?"> <input type="button" class="btn btn-light" id="btn03" value="문의 내용을 직접 입력하고 싶어요.">

													<div class="input-group">
														<textarea class="form-control" id="contact-form" aria-label="With textarea" placeholder="문의할 내용을 직접 작성해주세요." name="content"></textarea>
													</div>


												</div>

											</div>
										</div>


										<div class="col-md-12">
											<div class="form-group">
												<input type="submit" value="문의 하기" id="contact-btn" class="btn btn-primary py-3">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>

				<!-- 문의하기 끝 -->
			</div>
		</div>
		<!-- .col-md-8 -->
		</div>
		</div>
	</section>
	<!-- .section -->

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
	<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
	<script type="text/javascript">
		$(function() {
			//문의하기 - [문의내용] 클릭
			$('#contact-content').click(function() {
				$('#collapseExample').show();

			});
		});

		// 목록 - [찜하기] 클릭
		$('.text-zzim').click(function() {
			if ($(this).hasClass('nozzim')) {
				$(this).removeClass('nozzim');
				$(this).addClass('zzim');
				$(this).addClass('icon-like');

			} else if ($(this).hasClass('zzim')) {
				$(this).removeClass('zzim');
				$(this).removeClass('icon-like');
				$(this).addClass('nozzim');
			}
		});

		// 문의하기 - 토글
		$('#contact-form').hide();
		$('#btn03').click(function() {
			$('#btn01').hide();
			$('#btn02').hide();
			$('#contact-form').show();
			$('#contact-form').focus();
		});

		$('#contact-content').click(function() {
			$('#btn01').show();
			$('#btn02').show();
			$('#btn03').show();
			$('#contact-form').hide();
		});

		// 목록 - [call] 클릭
		//     	$('#call').click(function () {    	
		//     		var filter = "win16|win32|win64|mac|macintel"; 
		//     		if ( navigator.platform ) { 
		//     			if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) {
		//     				location.href="tel:010-1234-5678";

		//     			} else { 
		//     					alert('웹에서 전화걸기 ex. 010-1234-5678');	
		//     			} 
		//     		}

		// 		});

		// 전화하기 - [call] 클릭 후 모달창
		$(document).ready(function() {
			$('#btn-call').click(function() {
				$('#modal-content').show();
			});

			$('#btn-close').click(function() {
				$('#modal-content').hide();
			})
		});

		$(document).ready(function() {

			// 검색 조건 - 구조 [전체] 클릭
			$('.rtypeAll').click(function() {

				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');

					$('.rtype').removeClass('btn-primary');
					$('.rtype').addClass('btn-default');

				}

			});

			// 검색 조건 - 구조 다중 선택 메서드
			$.fn.room = function(clickThis) {

				if ($(clickThis).hasClass('btn-default')) {
					$(clickThis).removeClass('btn-default');
					$(clickThis).addClass('btn-primary');

					if ($('.rtypeAll').hasClass('btn-primary')) {
						$('.rtypeAll').removeClass('btn-primary');
						$('.rtypeAll').addClass('btn-default');
					}

				} else if ($(clickThis).hasClass('btn-primary')) {
					$(clickThis).removeClass('btn-primary');
					$(clickThis).addClass('btn-default');
				}

			}

			// 검색 조건 - 구조 [오픈형] 클릭
			$('.rtypeOpen').click(function() {
				$.fn.room(this);
			});

			// 검색 조건 - 구조 [분리형] 클릭
			$('.rtypeSeparate').click(function() {
				$.fn.room(this);
			});

			// 검색 조건 - 구조 [복층형] 클릭
			$('.rtypeStairs').click(function() {
				$.fn.room(this);
			});

			// 검색 조건 - 층 수 옵션 [전체] 클릭
			$('.ftypeAll ').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.floor').addClass('btn-default');
					$('.floor ').removeClass('btn-primary');
					$('.ftypeOther').addClass('btn-default');
					$('.ftypeOther').removeClass('btn-primary');
				}
			});

			// 검색 조건 - 층 수 옵션 [지상층] 클릭
			$('.floor').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.ftypeAll ').addClass('btn-default');
					$('.ftypeAll ').removeClass('btn-primary');
					$('.ftypeOther').addClass('btn-default');
					$('.ftypeOther').removeClass('btn-primary');
				}
			});

			// 검색 조건 - 층 수 옵션 [반지하, 옥탑] 클릭
			$('.ftypeOther').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.ftypeAll ').addClass('btn-default');
					$('.ftypeAll ').removeClass('btn-primary');
					$('.floor').addClass('btn-default');
					$('.floor').removeClass('btn-primary');
				}
			});

			// 검색 조건 - 계약 구분 - [전체] 클릭
			$('.rentAll ').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.rentMonthly').addClass('btn-default');
					$('.rentMonthly ').removeClass('btn-primary');
					$('.rentJeonse').addClass('btn-default');
					$('.rentJeonse').removeClass('btn-primary');
				}
			});

			// 검색 조건 - 계약 구분 - [월세] 클릭
			$('.rentMonthly ').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.rentAll').addClass('btn-default');
					$('.rentAll ').removeClass('btn-primary');
					$('.rentJeonse').addClass('btn-default');
					$('.rentJeonse').removeClass('btn-primary');
				}
			});

			// 검색 조건 - 계약 구분 - [전세] 클릭
			$('.rentJeonse ').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.rentAll').addClass('btn-default');
					$('.rentAll ').removeClass('btn-primary');
					$('.rentMonthly').addClass('btn-default');
					$('.rentMonthly').removeClass('btn-primary');
				}
			});

		});

		// 보증금 최저
		function ShowSliderValue1(sVal) {
			var obValueView = document.getElementById("slider_value_view1");
			if (sVal >= 10000) {
				obValueView.innerHTML = (sVal * 0.0001).toFixed(1) + "억 ~ ";
			} else {
				obValueView.innerHTML = sVal + "만 ~ ";
			}

		}

		// 보증금 최대
		function ShowSliderValue2(sVal) {
			var obValueView = document.getElementById("slider_value_view2");
			if (sVal >= 10000) {
				obValueView.innerHTML = (sVal * 0.0001).toFixed(1) + "억";
			} else {
				obValueView.innerHTML = sVal + "만";
			}
		}

		// 월세 최소
		function ShowSliderValue3(sVal) {
			var obValueView = document.getElementById("slider_value_view3");
			obValueView.innerHTML = sVal + "만 ~ ";
		}

		// 월세 최대
		function ShowSliderValue4(sVal) {
			var obValueView = document.getElementById("slider_value_view4");
			obValueView.innerHTML = sVal + "만";
		}

		function CloseModal() {
			var CloseModal = document.querySelector(".modal-container");
			CloseModal.classList.add("CloseModal");
		}
	</script>



</body>
</html>