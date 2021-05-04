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
	

	
<style type="text/css">
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

#contact-btn{
	margin-top: 10px;
}



table {
	width: 100%;
	border-top: 1px solid #dddddddd;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #dddddddd;
	padding: 10px;
	text-align: center;
	}
			
			
.option-info-container{
  padding: 50px 100px 50px 100px;
  border-top: 1px solid #dddddddd;
  border-bottom: 1px solid #dddddddd;
}


.room-detail-option-item-wrapper{
	margin-top: 40px;
	display: flex;

}



.room-detail-content-option-item {
  text-align: center;
  flex: 1;
}

.room-detail-content-option-item > img {
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

.room-contact-container{
  margin-top: 25px;
  border-top: 1px solid #dddddddd;
}

.map-container{
  padding-top: 50px;
  padding-bottom: 50px;
  border-top: 1px solid #dddddddd;
  
}
.map-container #map {/* border:1px solid red;  */
  margin-left:auto !important; 
  margin-right:auto !important; }
  
.info-container {
	text-align: left;
}
  
.btn btn-secondary > a:visited{
	color: white;
}

.btn btn-secondary > a:link{
	color: white;
}

.zzim:before {
	content:"💓 찜한 매물";
	color: #f85959;
	font-weight: bold;
}

.zzim:hover:before {
	content:"🤍 찜하기 취소";
   cursor: pointer;
   color: black;	
   font-weight: normal;
}


.nozzim:before {
	content:"🤍 찜하기";
}

.nozzim:hover:before {
	content:"💓 찜하기";
   cursor: pointer;
   color: #f85959;	
	font-weight: bold;
}




					
</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>

	<%@ include file="../views/top.jsp"%>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center"
					data-scrollax=" properties: { translateY: '70%' }">
					<p class="breadcrumbs"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<span class="mr-2"><a href="index.html">Home</a></span> <span
							class="mr-2"><a href="hotel.html">Hotel</a></span> <span>Hotel
							Single</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">매물
						상세</h1>
				</div>
			</div>
		</div>
	</div>



	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 sidebar">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h3 class="heading mb-4">검색 조건을 설정해주세요</h3>
						<form action="#">
							<div class="fields">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="지역, 지하철역 검색">
								</div>
								<div class="form-group">
									<div class="select-wrap one-third">

										구조
										<div class="form-group">
											<input type="button" class="btn te btn-primary button-class1"
												value="전체"> <input type="button"
												class="btn te btn-default button-class2" value="오픈형">
											<input type="button" class="btn te btn-default button-class3"
												value="분리형"> <input type="button"
												class="btn te btn-default button-class4" value="복층형">
										</div>

										층 수 옵션
										<div class="form-group">
											<input type="button"
												class="btn te btn-primary button-class11" value="전체">
											<input type="button"
												class="btn te btn-default button-class12" value="지상층">
											<input type="button"
												class="btn te btn-default button-class13" value="반지하,옥탑">
										</div>


									</div>
								</div>

								<div class="form-group">
									보증금
									<div class="range-slider">
										<span> <!-- 보증금 --> <!-- 								  <input type="number" value="0" min="0" max="120000" id = "slider_value_view"/>	- -->
											<!-- 								 <input type="number" value="50000" min="0" max="120000"/> -->
											<!-- 										  </span> -->
										</span>

										<div class="Container">
											<font size=2>0</font> <input
												oninput='ShowSliderValue(this.value)' style="width: 80%;"
												class="slider_range" type="range" value="0" min="0"
												max="1000"></input> <font size=2 id="slider_value_view2">0</font>
											<input oninput='ShowSliderValue(this.value)' type="range"
												min='0' max='1000' value='100'>
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




									월세
<!-- 									<div class="range-slider"> -->
<!-- 										<span>  -->
<!-- 										<input type="number" value="25000" -->
<!-- 											min="0" max="120000" /> - <input type="number" value="50000" -->
<!-- 											min="0" max="120000" /> -->
<!-- 										</span> <input value="1000" min="0" max="120000" step="500" -->
<!-- 											type="range" /> <input value="50000" min="0" max="120000" -->
<!-- 											step="500" type="range" /> -->

<!-- 										</svg> -->
<!-- 									</div> -->


								</div>




								<div class="form-group">
									<input type="submit" value="Search"
										class="btn btn-primary py-3 px-5">
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
										<img
											src="${pageContext.request.contextPath}/resources/images/room-2.png">
									</div>

								</div>
								<div class="item">
									<div class="hotel-img">
										<img
											src="${pageContext.request.contextPath}/resources/images/room-1.jpg">
									</div>
								</div>
								<div class="item">
									<div class="hotel-img">
										<img
											src="${pageContext.request.contextPath}/resources/images/room-3.jpg">
									</div>
								</div>
							</div>

						</div>




						<div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
							<div class="info-container">
								<span>원룸/월세</span>
							<h2>즉시 입주 가능한 주방 분리형 원룸</h2>

							<p class="rate mb-5">
								<span class="loc"><a href="#"><i class="icon-map"></i>
										부산진구 전포동 123-45</a></span><br> 
										<span class="text-zzim icon-like nozzim"></span>
										<span class="text-zzim icon-like zzim"></span>

								<h6 style="text-align: left;">
									<i class="fas fa-user" style="width: 20; height: 20"></i> 서면
									공인중개사무소
								</h6>

								<div>

									<button type="button" id="call" class="btn btn-secondary"
										style="float: left; margin-right: 0.5em;">
										전화하기
									</button>
									<button type="button" class="btn btn-secondary"
										style="float: left;">채팅하기</button>

								</div>
							
								</div>
								 </div>
							</div>

							<div class="d-md-flex mt-5 mb-5">
								<table>
									<thead>
										<tr>
											<th>방 형태</th>
											<td>분리형 원룸(욕실 1개)</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>건물 유형</th>
											<td>다세대 주택</td>
										</tr>
										<tr>
											<th>건물 크기</th>
											<td>24m<sup>2</sup></td>
										</tr>
										<tr>
											<th>건물 층수</th>
											<td>3/5</td>
										</tr>
										<tr>
											<th>입주 가능일</th>
											<td>즉시 입주</td>
										</tr>

										<tr>
											<th>관리비</th>
											<td>15만원(관리비 외 사용 따라 부과 전기, 가스, 수도, 인터넷, 티비)</td>
										</tr>

										<tr>
											<th>주소</th>
											<td>부산진구 전포동 123-45</td>
										</tr>
									</tbody>
								</table>

							</div>

							<br>

							<div class="option-info-container">
								<!-- 								<div class="room-detail-option-title">옵션</div> -->
								<h4 class="mb-5">옵션</h4>
								<div class="room-detail-option-item-wrapper">

									<div class="room-detail-content-option-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/bed.png"
											width="50" height="50">
										<div class="room-detail-content-option-item-name">침대</div>
									</div>

									<div class="room-detail-content-option-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/fridge.png"
											width="50" height="50">
										<div class="room-detail-content-option-item-name">냉장고</div>
									</div>

									<div class="room-detail-content-option-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/television.png"
											width="50" height="50">
										<div class="room-detail-content-option-item-name">TV</div>
									</div>

									<div class="room-detail-content-option-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/air-conditioner.png"
											width="50" height="50">
										<div class="room-detail-content-option-item-name">에어컨</div>
									</div>

									<div class="room-detail-content-option-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/microwave.png"
											width="50" height="50">
										<div class="room-detail-content-option-item-name">전자레인지</div>
									</div>
								</div>
							</div>

							<br>

							<div class="map-container">
								<h4 class="mb-5">위치 정보</h4>
								<h6 class="mb-5">부산진구 전포동 123-45</h6>
								<div id="map" style="width: 500px; height: 400px;">




									<!-- 						<script type="text/javascript" -->
									<!-- 							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e97625a0c2b00cdf9292bd703ece0f7"></script> -->
									<!-- 						<script> -->

									<!-- services 라이브러리 불러오기 -->
									<script type="text/javascript"
										src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e97625a0c2b00cdf9292bd703ece0f7&libraries=services,clusterer,drawing">
						</script>

									<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
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
							geocoder.addressSearch(
											'서울특별시 영등포구 여의동로 330 한강사업본부 여의도안내센터',
											function(result, status) {

												// 정상적으로 검색이 완료됐으면 
												if (status === kakao.maps.services.Status.OK) {

													var coords = new kakao.maps.LatLng(result[0].y,result[0].x);

													// 결과값으로 받은 위치를 마커로 표시합니다
													var marker = new kakao.maps.Marker(
															{
																map : map,
																position : coords
															});

													// 인포윈도우로 장소에 대한 설명을 표시합니다
													var infowindow = new kakao.maps.InfoWindow(
															{
																content : '<div style="width:150px;text-align:center;padding:6px 0;">역세권 위치 좋은 원룸</div>'
															});
													infowindow.open(map, marker);

													// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
													map.setCenter(coords);
												} else {
													alert("주소변환실패");
												}
											});
						</script>

								</div>
							</div>


							<div class="room-contact-container">
								<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
									<h4 class="mb-5">매물 문의하기 &amp; 상담예약</h4>
									<div class="fields">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<input type="text" class="form-control" placeholder="이름">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<input type="text" class="form-control"
														placeholder="휴대폰 번호">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<input type="text" id="checkin_date" class="form-control"
														placeholder="방문하실 날짜">
												</div>
											</div>


											<div class="col-md-12">
												<div class="form-group">
													<a class="btn btn-secondary py-3" id="contact-content"
														data-bs-toggle="collapse" href="#collapseExample"
														role="button" aria-expanded="false"
														aria-controls="collapseExample"> 문의할 내용 </a>
												</div>

												<div class="collapse" id="collapseExample">
													<div class="card card-body">
														<input type="button" class="btn btn-light" id="btn01"
														value="이 집 볼 수 있나요?">
														<input type="button" class="btn btn-light" id="btn02"
														value="비슷한 조건의 다른 집이 있나요?">
														<input type="button" class="btn btn-light" id="btn03"
														value="문의 내용을 직접 입력하고 싶어요.">
														
												<div class="input-group">
													
													<textarea class="form-control" id="contact-form" aria-label="With textarea" placeholder="문의할 내용을 직접 작성해주세요." ></textarea>
												</div>


											</div>
	
											</div>
											</div>


											<div class="col-md-12">
												<div class="form-group">
													<input type="submit" value="문의 하기"
													id="contact-btn"
														class="btn btn-primary py-3">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
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
	<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<script
		src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
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
    	$('.text-zzim').click(function(){   
    	    if($(this).hasClass('nozzim')) {
    	        $(this).removeClass('nozzim');
    	        $(this).addClass('zzim');
    	        $(this).addClass('icon-like');
    	        
    	    } else if ($(this).hasClass('zzim')){
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
    	$('#call').click(function () {    	
    		var filter = "win16|win32|win64|mac|macintel"; 
    		if ( navigator.platform ) { 
    			if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) {
    				location.href="tel:010-1234-5678";
			
    			} else { 
    					alert('웹에서 전화걸기 ex. 010-1234-5678');	
    			} 
    		}
		
		});

	</script>


</body>
</html>