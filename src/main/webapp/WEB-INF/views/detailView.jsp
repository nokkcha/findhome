<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e97625a0c2b00cdf9292bd703ece0f7"></script>
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
 #table{
 table-layout: fixed;
 }
 

 </style>
     <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
  <body>

  <%@ include file="../views/top.jsp" %>
    
    <div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="hotel.html">Hotel</a></span> <span>Hotel Single</span></p>
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
        			<h3 class="heading mb-4">검색 조건을 설정해주세요</h3>
        			<form action="#">
        				<div class="fields">
		              <div class="form-group">
		                <input type="text" class="form-control" placeholder="지역, 지하철역 검색">
		              </div>
		              <div class="form-group">
		                <div class="select-wrap one-third">

	                      구조
	                 <div class="form-group">
		                <input type="button" class="btn te btn-primary button-class1"  value="전체">
		                <input type="button" class="btn te btn-default button-class2"  value="오픈형">
		                <input type="button" class="btn te btn-default button-class3"  value="분리형">
		                <input type="button" class="btn te btn-default button-class4"  value="복층형">
		              </div>
		              
	                      층 수 옵션
	                      <div class="form-group">
	                       <input type="button" class="btn te btn-primary button-class11"  value="전체">
		                	<input type="button" class="btn te btn-default button-class12"  value="지상층">
		             		<input type="button" class="btn te btn-default button-class13"  value="반지하,옥탑">
		              </div>


	                  </div>
		              </div>

		              <div class="form-group">
		              보증금
		              	<div class="range-slider">
		              		<span>  <!-- 보증금 -->
<!-- 								  <input type="number" value="0" min="0" max="120000" id = "slider_value_view"/>	- -->
<!-- 								 <input type="number" value="50000" min="0" max="120000"/> -->
<!-- 										  </span> -->
										   </span>	
										  
		<div class="Container" >
  		<font size = 2 >0</font>						  
  		<input oninput = 'ShowSliderValue(this.value)' style = "width:80%;" class="slider_range" type="range" value="0" min="0" max="1000"></input>
   <font size = 2 id = "slider_value_view2">0</font>							  
		<input oninput = 'ShowSliderValue(this.value)'  type = "range" min='0' max='1000' value='100'>
		</div>




										  
										  </svg>
										</div>
										<script language = "javascript">

function ShowSliderValue(sVal) {
	var obValueView = document.getElementById("slider_value_view");
	obValueView.innerHTML = sVal
}

function ShowSliderValue(sVal) {
	var obValueView = document.getElementById("slider_value_view2");
	obValueView.innerHTML = sVal
}

var RangeSlider = function(){
	var range = $('.slider_range');
    
	range.on('input', function(){		
		ShowSliderValue(this.value);
	});
};

RangeSlider();


</script>



						월세
		         <div class="range-slider">
		              <span>  <!-- 월세 -->
					<input type="number" value="25000" min="0" max="120000"/>	-
						<input type="number" value="50000" min="0" max="120000"/>
						</span>
					<input value="1000" min="0" max="120000" step="500" type="range"/>
							 <input value="50000" min="0" max="120000" step="500" type="range"/>
										  
								</svg>
							</div>
	
        		
		              </div>
		              
		              
		              
		              
		              <div class="form-group">
		                <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
		              </div>
		            </div>
	            </form>
        		</div>
        		<div class="sidebar-wrap bg-light ftco-animate">
        		<h3 class="heading mb-4">별점</h3>
        	<form method="post" class="star-rating">
				 <div class="form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">
			<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i></span></p>
				</label>
					</div>
				 <div class="form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">
				<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i></span></p>
				 </label>
				 </div>
					<div class="form-check">
					 <input type="checkbox" class="form-check-input" id="exampleCheck1">
					 <label class="form-check-label" for="exampleCheck1">
					<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
					</label>
					</div>
					<div class="form-check">
					 <input type="checkbox" class="form-check-input" id="exampleCheck1">
				 <label class="form-check-label" for="exampleCheck1">
				<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
				 </label>
			  </div>
	  			<div class="form-check">
	   			<input type="checkbox" class="form-check-input" id="exampleCheck1">
	   			<label class="form-check-label" for="exampleCheck1">
					<p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
					</label>
					</div>
					</form>
        		</div>
          </div>
          <div class="col-lg-9">
          	<div class="row">
          		<div class="col-md-12 ftco-animate">
          			<div class="single-slider owl-carousel">
          				<div class="item">
          					<div class="hotel-img"><img src="${pageContext.request.contextPath}/resources/images/room-2.png"></div>
          					
          				</div>
          				<div class="item">
          					<div class="hotel-img"><img src="${pageContext.request.contextPath}/resources/images/room-1.jpg"></div>
          				</div>
          				<div class="item">
          					<div class="hotel-img"><img src="${pageContext.request.contextPath}/resources/images/room-3.jpg"></div>
          				</div>
          			</div>
          		
          		</div>
          		
          		<div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
          			<span>원룸/월세</span>
          			<h2>역세권 위치 좋은 원룸 <i class="far fa-heart fa-1x"></i></h2>
          			<p class="rate mb-5">
          				<span class="loc"><a href="#"><i class="icon-map"></i> 서울특별시 영등포구 여의동로 330 한강사업본부 여의도안내센터</a></span>
          			<span><h5><i class="fas fa-user fa-1x" style="width: 20;height: 20"></i> 서면 공인중개사무소</h5>
          					<div>
								<a href="tel:02-1234-1234"><input type="image" src="${pageContext.request.contextPath}/resources/images/callButton.png" width="100";height="100" ></a>
								<input type="image" src="${pageContext.request.contextPath}/resources/images/chatButton.png" width="100";height="100" >
							</div>
          			
          			
          			</span>
          				
							
						
							
    						</p>
<<<<<<< HEAD
    						<p>서면역 8번출구에서 도보로 4분거리인 신축 원룸 건물이 새로 나왔습니다. 간단한 상세정보를 입력하세요. </p>
=======
    						<p>서면역 8번출구에서 도보로 4분거리인 신축 원룸 건물이 새로 나왔습니다. 간단한 상세정보를 입력하세요. 간단한 상세정보를 입력하세요...</p>
    						<br>
    						<h4 class="mb-4">옵션 정보</h4>
>>>>>>> branch 'detailView' of https://github.com/imrutel/findhome.git
    						<div class="d-md-flex mt-5 mb-5">
    							<table id="table" border="1" style="width: 1000">
    								<tr>
    									<th>방방 형태</th>
    									<td>분리형 원룸(욕실 1개)</td>
    									<th>옵션</th>
    									<td>풀옵션</td>
    								</tr>
    								
    								<tr>
    									<th>건물 크기</th>
    									<td>24m<sup>2</sup></td>
    									<th>건물 종류</th>
    									<td>제2종근린생활시설</td>
    								</tr>
    								
    								<tr>
    									<th>건물 층수</th>
    									<td>3</td>
    									<th>입주 가능일</th>
    									<td>즉시 가능</td>
    								</tr>
    							
    							</table>
    						</div>
							<p>● 보증금 100~300까지 조정가능 ● 위치 : 신림역 도보 2분 d이내 ● 신림 초역세권의 깔끔한
								빌트인원룸입니다. ✔ 직접 촬영한 100% 실매물입니다. ✔ 큰 길가, 건물 내/외부 CCTV 설치되어 안전해요</p>
						</div>
						
<<<<<<< HEAD
						<div id="map" style="width:500px;height:400px;"></div>
						
						<script>
		
						<div id="map" style="width:500px;height:400px;"></div>
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e97625a0c2b00cdf9292bd703ece0f7"></script>
						<script>
							var container = document.getElementById('map');
							var options = {
								center: new kakao.maps.LatLng(33.450701, 126.570667),
								level: 3
							};

							var map = new kakao.maps.Map(container, options);
						</script>
	</script>
						
						<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=YOUR_CLIENT_ID"></script>
						
=======
						<!-- 동영상 부분 -->
<!--           		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4"> -->
          			
<!--           			<div class="block-16"> -->
<!-- 		              <figure> -->
<%-- 		                <img src="${pageContext.request.contextPath}/resources/images/room-2.png" alt="Image placeholder" class="img-fluid"> --%>
<!-- 		                <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a> -->
<!-- 		              </figure> -->
<!-- 		            </div> -->
<!--           		</div> -->


>>>>>>> branch 'detailView' of https://github.com/imrutel/findhome.git
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
<<<<<<< HEAD
          			<h4 class="mb-4">옵션 정보</h4>
          			<div class="block-16">
		              <figure>
		                <img src="${pageContext.request.contextPath}/resources/images/hotel-6.jpg" alt="Image placeholder" class="img-fluid">
		                <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a>
		              </figure>
		            </div>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-4">한줄 방소개</h4>
=======
          			<h4 class="mb-4">주변의 다른방 살펴보기</h4>
>>>>>>> branch 'detailView' of https://github.com/imrutel/findhome.git
          			<div class="row">
          				<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" src="${pageContext.request.contextPath}/resources/images/room-2.png"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>
						    						<p class="rate">
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star-o"></i>
						    							<span>8 Rating</span>
						    						</p>
					    						</div>
					    						<div class="two">
					    							<span class="price per-price">1000<br><small>/50</small></span>
				    							</div>
				    						</div>
				    						<p>주변이 조용하고 깨끗한 매물입니다</p>
				    						<hr>
				    						<p class="bottom-area d-flex">
				    							<span><i class="icon-map-o"></i> 전포동, 부산진구</span> 
				    							<span class="ml-auto"><a href="#">매물 문의</a></span>
				    						</p>
				    					</div>
				    				</div>
				    			</div>
				    			<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/room-5.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>
						    						<p class="rate">
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star-o"></i>
						    							<span>8 Rating</span>
						    						</p>
					    						</div>
					    						<div class="two">
					    							<span class="price per-price">1000<br><small>/50</small></span>
				    							</div>
				    						</div>
				    						<p>주변이 조용하고 깨끗한 매물입니다</p>
				    						<hr>
				    						<p class="bottom-area d-flex">
				    							<span><i class="icon-map-o"></i> 전포동, 부산진구</span> 
				    							<span class="ml-auto"><a href="#">매물 문의</a></span>
				    						</p>
				    					</div>
				    				</div>
				    			</div>
				    			<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/room-6.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>
						    						<p class="rate">
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star-o"></i>
						    							<span>8 Rating</span>
						    						</p>
					    						</div>
					    						<div class="two">
					    							<span class="price per-price">1000<br><small>/50</small></span>
				    							</div>
				    						</div>
				    						<p>주변이 조용하고 깨끗한 매물입니다</p>
				    						<hr>
				    						<p class="bottom-area d-flex">
				    							<span><i class="icon-map-o"></i> 전포동, 부산진구</span> 
				    							<span class="ml-auto"><a href="#">매물 문의</a></span>
				    						</p>
				    					</div>
				    				</div>
				    			</div>
          			</div>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-5">매물 문의하기 &amp; 상담예약</h4>
          			<div class="fields">
          				<div class="row">
          					<div class="col-md-6">
				              <div class="form-group">
				                <input type="text" class="form-control" placeholder="성명">
				              </div>
			              </div>
			              <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" class="form-control" placeholder="이메일">
				              </div>
			              </div>
			              <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" id="checkin_date" class="form-control" placeholder="">
				              </div>
			              </div>
			              <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" id="checkin_date" class="form-control" placeholder="">
				              </div>
				            </div>
				            <div class="col-md-6">
					            <div class="form-group">
				                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder=".">
			                      <option value="0">.</option>
			                      <option value="1">1</option>
			                      <option value="2">2</option>
			                      <option value="3">3</option>
			                      <option value="4">4</option>
			                    </select>
			                  </div>
				              </div>
			              </div>
			              <div class="col-md-6">
					            <div class="form-group">
				                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder=".">
			                      <option value="0">.</option>
			                      <option value="1">1</option>
			                      <option value="2">2</option>
			                      <option value="3">3</option>
			                      <option value="4">4</option>
			                    </select>
			                  </div>
				              </div>
			              </div>
				            <div class="col-md-12">
				              <div class="form-group">
				                <input type="submit" value="문의 하기" class="btn btn-primary py-3">
				              </div>
			              </div>
		              </div>
		            </div>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-4"> 리뷰 &amp; 별점</h4>
          			<div class="row">
          				<div class="col-md-6">
          					<form method="post" class="star-rating">
										  <div class="form-check">
												<input type="checkbox" class="form-check-input" id="exampleCheck1">
												<label class="form-check-label" for="exampleCheck1">
													<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i> 100 Ratings</span></p>
												</label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									    	   <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i> 30 Ratings</span></p>
									      </label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 5 Ratings</span></p>
									     </label>
										  </div>
										  <div class="form-check">
										    <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 0 Ratings</span></p>
									      </label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 0 Ratings</span></p>
										    </label>
										  </div>
										</form>
          				</div>
          			</div>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-5">
          			<h4 class="mb-4">비슷한 매물</h4>
          			<div class="row">
          				<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/hotel-1.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>
						    						<p class="rate">
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star-o"></i>
						    							<span>8 Rating</span>
						    						</p>
					    						</div>
					    						<div class="two">
					    							<span class="price per-price">1000<br><small>/50</small></span>
				    							</div>
				    						</div>
				    						<p>Far far away, behind the word mountains, far from the countries</p>
				    						<hr>
				    						<p class="bottom-area d-flex">
				    							<span><i class="icon-map-o"></i> 전포동, 부산진구</span> 
				    							<span class="ml-auto"><a href="#">매물 문의</a></span>
				    						</p>
				    					</div>
				    				</div>
				    			</div>
				    			<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/hotel-2.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>
						    						<p class="rate">
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star-o"></i>
						    							<span>8 Rating</span>
						    						</p>
					    						</div>
					    						<div class="two">
					    							<span class="price per-price">1000<br><small>/50</small></span>
				    							</div>
				    						</div>
				    						<p>Far far away, behind the word mountains, far from the countries</p>
				    						<hr>
				    						<p class="bottom-area d-flex">
				    							<span><i class="icon-map-o"></i> 전포동, 부산진구</span> 
				    							<span class="ml-auto"><a href="#">매물 문의</a></span>
				    						</p>
				    					</div>
				    				</div>
				    			</div>
				    			<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/hotel-3.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>
						    						<p class="rate">
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star"></i>
						    							<i class="icon-star-o"></i>
						    							<span>8 Rating</span>
						    						</p>
					    						</div>
					    						<div class="two">
					    							<span class="price per-price">1000<br><small>/50</small></span>
				    							</div>
				    						</div>
				    						<p>Far far away, behind the word mountains, far from the countries</p>
				    						<hr>
				    						<p class="bottom-area d-flex">
				    							<span><i class="icon-map-o"></i> 전포동, 부산진구</span> 
				    							<span class="ml-auto"><a href="#">매물 문의</a></span>
				    						</p>
				    					</div>
				    				</div>
				    			</div>
          			</div>
          		</div>

          	</div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">dirEngine</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Service</a></li>
                <li><a href="#" class="py-2 d-block">Terms and Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Become a partner</a></li>
                <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                <li><a href="#" class="py-2 d-block">How it works</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
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
    
  </body>
</html>