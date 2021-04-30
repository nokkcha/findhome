<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  </head>
  <body>
    
  <%@ include file="../views/top.jsp" %>
    
    
    <div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">메인</a></span> <span>오피스텔</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"> 원룸 </h1>
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
		                <input type="button" class="btn te btn-primary rtypeAll"  value="전체">
		                <input type="button" class="btn te btn-default rtypeOpen rtype"  value="오픈형">
		                <input type="button" class="btn te btn-default rtypeSeparate rtype"  value="분리형">
		                <input type="button" class="btn te btn-default rtypeStairs rtype"  value="복층형">
		              </div>
		              
	                      층 수 옵션
	                      <div class="form-group">
	                       <input type="button" class="btn te btn-primary ftypeAll"  value="전체">
		                	<input type="button" class="btn te btn-default floor"  value="지상층">
		             		<input type="button" class="btn te btn-default ftypeOther"  value="반지하,옥탑">
		              </div>


	                  </div>
		              </div>



										<script language = "javascript">
function ShowSliderValue(sVal) {
	var obValueView = document.getElementById("slider_value_view");
	obValueView.innerHTML = sVal
}
function ShowSliderValue2(sVal) {
	var obValueView = document.getElementById("slider_value_view2");
	obValueView.innerHTML = sVal
}
var RangeSlider = function(){
	var range = $(this);
    
	range.on('input', function(){		
		ShowSliderValue(this.value);
	});
};
RangeSlider();
</script>

		              <div class="form-group">
		              보증금
		              	<div class="range-slider">	  						  
					<div class="Container" >
					  <font size = 2 id ="slider_value_view">0</font>						  
					  <input oninput = 'ShowSliderValue(this.value)' style = "width:80%;" class="slider_range" type="range" value="0" min="0" max="1000"  step="100">
					  <font size = 2 id ="slider_value_view2">0</font>							  
					<input oninput = 'ShowSliderValue2(this.value)'  type = "range" min='0' max='1000' value='100'>
					</div>	  
										  </svg>
										</div>

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
        		
        		
        		
        		
          </div>
          <div class="col-lg-9">
          <button class="btn_room btn"> 방 찾기 </button>
          <button class="btn_like btn"> 찜한 매물 </button>
        	
          	<div class="row">
          		<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="hotel-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel-1.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>

			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><small>1000/50</small></span>
		    							</div>
		    						</div>
		    						<p>한줄 방소개</p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> 찜하기</span> 
		    							<span class="ml-auto call"><a href="javascript:void(0);">call</a></span>
		    							
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="hotel-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel-2.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>

			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><small>1000/50</small></span>
		    							</div>
		    						</div>
		    						<p>한줄 방소개</p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> 찜하기</span> 
		    							<span class="ml-auto call"><a href="javascript:void(0);">call</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="hotel-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel-3.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>

			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><small>1000/50</small></span>
		    							</div>
		    						</div>
		    						<p>한줄 방소개</p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> 찜하기</span> 
		    							<span class="ml-auto call"><a href="javascript:void(0);">call</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="hotel-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel-4.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>

			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><small>1000/50</small></span>
		    							</div>
		    						</div>
		    						<p>한줄 방소개</p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> 찜하기</span> 
		    							<span class="ml-auto call"><a href="javascript:void(0);">call</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="hotel-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel-5.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>

			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><small>1000/50</small></span>
		    							</div>
		    						</div>
		    						<p>한줄 방소개</p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> 찜하기</span> 
		    							<span class="ml-auto call"><a href="javascript:void(0);">call</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="hotel-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel-6.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="hotel-single.html">전포동, 부산진구</a></h3>

			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><small>1000/50</small></span>
		    							</div>
		    						</div>
		    						<p>한줄 방소개</p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> 찜하기</span> 
		    							<span class="ml-auto call"><a href="javascript:void(0);">call</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
          	</div>
          	<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
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
              <p>한줄 방소개</p>
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
  
  
        <script src="../script/jquery-3.6.0.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	$('.rtypeAll').click(function(){
    		if( $(this).hasClass('btn-default') ) {
    			$(this).removeClass('btn-default');
    			$(this).addClass('btn-primary');
    			
    			$('.rtype').removeClass('btn-primary');
    			$('.rtype').addClass('btn-default');
    		} 
	
    	});
    	
    	$.fn.room= function (clickThis) { 		
    		
    	    if($(clickThis).hasClass('btn-default')) {
    	        $(clickThis).removeClass('btn-default');
    	        $(clickThis).addClass('btn-primary');
    	        
    	        if( $('.rtypeAll').hasClass('btn-primary')) {
    	            $('.rtypeAll').removeClass('btn-primary');
    	            $('.rtypeAll').addClass('btn-default');
    	        }
    	        
    	    } else if ($(clickThis).hasClass('btn-primary')){
    	        $(clickThis).removeClass('btn-primary');
    	        $(clickThis).addClass('btn-default');
    	    }    
    	
    	}
    	
    	$('.rtypeOpen').click(function(){
            $.fn.room(this);
		});
    	$('.rtypeSeparate').click(function(){
    		$.fn.room(this);
    	});
    	
    	$('.rtypeStairs').click(function(){
    		$.fn.room(this);
    	});
      
        	
        	$('.ftypeAll ').click(function(){       		
        		if( $(this).hasClass('btn-default') ) {
        			$(this).removeClass('btn-default');
        			$(this).addClass('btn-primary');
        			$('.floor').addClass('btn-default');
        			$('.floor ').removeClass('btn-primary');
        			$('.ftypeOther').addClass('btn-default');
        			$('.ftypeOther').removeClass('btn-primary');
        		}
        	});
        	
        	$('.floor').click(function(){       		
        		if( $(this).hasClass('btn-default') ) {
        			$(this).removeClass('btn-default');
        			$(this).addClass('btn-primary');
        			$('.ftypeAll ').addClass('btn-default');
        			$('.ftypeAll ').removeClass('btn-primary');
        			$('.ftypeOther').addClass('btn-default');
        			$('.ftypeOther').removeClass('btn-primary');
        		}
        	});
        	
        	$('.ftypeOther').click(function(){       		
        		if( $(this).hasClass('btn-default') ) {
        			$(this).removeClass('btn-default');
        			$(this).addClass('btn-primary');
        			$('.ftypeAll ').addClass('btn-default');
        			$('.ftypeAll ').removeClass('btn-primary');
        			$('.floor').addClass('btn-default');
        			$('.floor').removeClass('btn-primary');
        		}
        	});
        	
        	$('.call').click(function () {    	
        		var filter = "win16|win32|win64|mac|macintel"; 
        		if ( navigator.platform ) { 
        			if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) {
        				location.href="tel:010-1234-5678";
				
        			} else { 
        					alert('웹에서 전화걸기 ex. 010-1234-5678');	
        			} 
        		}
    		
    		});
    });
    
    </script>

  
  </body>
</html>