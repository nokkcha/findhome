<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/findRoom.css">
    
    
    
  </head>
  <body>
    
  <%@ include file="../views/top.jsp" %>
    
    
    <div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
      <div class="overlay"></div>
      
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
            <span class="mr-2"><a href="<c:url value="findRooms"/>">원룸</a></span>
             <span><a href="<c:url value="findOfficetel"/>">오피스텔</a></span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"> 오피스텔 </h1>
          </div>
        </div>
      </div>
      
    </div>
    
    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row-list">
        	<div class="col-lg-3 sidebar">
        		<div class="sidebar-wrap bg-light ftco-animate">
        			<h3 class="heading mb-4">검색 조건 설정</h3>
        			
        			<form action='<c:url value="findOfficetel-search"/>'>
        			<input type="hidden" value="Officetel" name="category">
        			
        			
        				<div class="fields">
		              <div class="form-group">
		              <input type="reset" value="재설정" class="filter-reset">
		                <input type="text" class="form-control" placeholder="지역, 지하철역 검색" name="search" id="filter-search">
		                
					<input type="submit" value="검색" class="btn filter-search-submit" id="filter-search-submit">
		              </div>
		              <div class="form-group">
		                <div class="select-wrap2 one-third">


	                      구조
	                 <div class="form-group">
	
					<input type="checkbox" name="room_all" value="전체" class="cktag" id="rtypeAll" 
		              onclick="rtypeSelectAll(this)" checked> 
		              <label class="label-class" for="rtypeAll">
		              <span class="btn op-css" id=" span-rtypeAll"> 전체  </span></label>
	
					<input type="checkbox" name="room_type" value="오픈형" class="cktag"  id="rtypeOpen" 
	                 onclick="rtypeCheckSelectAll(this)">
	                 <label class="label-class" for="rtypeOpen">
	                 <span class="btn op-css rtypeOther"> 오픈형 원룸  </span> </label>
		                 
	                  <input type="checkbox" name="room_type" value="분리형" class="cktag"  id="rtypeSeparate"
	                  onclick="rtypeCheckSelectAll(this)">  
	                 <label class="label-class" for="rtypeSeparate">
	                 <span class="btn op-css rtypeOther"> 분리형 원룸</span></label>
		                  
		            <input type="checkbox" name="room_type" value="복층형" class="cktag"  id="rtypeStairs"
	                onclick="rtypeCheckSelectAll(this)">
	                 <label class="label-class" for="rtypeStairs"> 
	                 <span class="btn op-css rtypeOther"> 복층형 원룸
	                 </span></label>
		                  
		            <input type="checkbox" name="room_type" value="투룸" class="cktag"  id="rtypeTwo"
	                onclick="rtypeCheckSelectAll(this)">
	                 <label class="label-class" for="rtypeTwo"> 
	                 <span class="btn op-css rtypeOther"> 투룸
	                 </span></label>
		                  
		            <input type="checkbox" name="room_type" value="쓰리룸" class="cktag"  id="rtypeThree"
	                onclick="rtypeCheckSelectAll(this)">
	                 <label class="label-class" for="rtypeThree"> 
	                 <span class="btn op-css rtypeOther"> 쓰리룸+
	                 </span></label>


		              </div>
		              
	                      층 수 옵션
	                      <div class="form-group">

						<input type="checkbox" name="floor_all" value="전체" class="cktag" id="ftypeAll"
		             	   onclick="ftypeSelectAll(this)" checked> 
		             	  <label class="label-class" for="ftypeAll">
		             	  <span class="btn op-css" id="span-ftypeAll"> 전체 </span></label>
		             	  
		             	  <input type="checkbox" name="living_floor" value="층" class="cktag" id="ftypeFloor"
		             	  onclick="ftypeCheckSelectAll(this)">
		             	  <label class="label-class" for="ftypeFloor">
		             	  <span class="btn op-css"> 지상층 </span></label>
		             	  
		             	  <input type="checkbox" name="living_floor" value="반지하" class="cktag" id="ftypeBottom"
		             	 onclick="ftypeCheckSelectAll(this)">
		             	 <label class="label-class" for="ftypeBottom">
		             	 <span class="btn op-css">	반지하 </span></label>
		             	  
		             	 <input type="checkbox" name="living_floor" value="옥탑방" class="cktag" id="ftypeTop"
		             	 onclick="ftypeCheckSelectAll(this)">
		             	 <label class="label-class" for="ftypeTop">
		             	 <span class="btn op-css"> 옥탑방 </span></label>
		             </div>
	                  </div>
		              </div>
		              
		       		   <script type="text/javascript">

		              </script>       

			<div class="form-group">
		              보증금
		        <div class="range-slider">
					<div class="Container" style="text-align: center;" >
				  		<font size = 3 id = "slider_value_view1" style="color: gray;">0</font>	
				  							  
				  			<input oninput = 'ShowSliderValue1(this.value)' style = "width:100%;" class="slider_range1" id="rangeTest"
				  			 type="range" step="100" value="0" min="0" max="50000" name="deposit_min" ></input>
				  			 
				  			 <span style="margin: 0 15%"> - </span>
				  			 
				   		<font size = 3 id = "slider_value_view2" style="color: gray;">5억</font>							  
							<input oninput = 'ShowSliderValue2(this.value)' style = "width:100%;" class="slider_range2" 
							type="range" step="100" value="50000" min="0" max="50000" name="deposit_max" ></input>
					</div>
				</div>
	
						월세
		              	<div class="range-slider">
						<div class="Container2" style="text-align: center;" >
					  		<font size = 3 id = "slider_value_view3" style="color: gray;">0</font>		
					  						  
					  			<input oninput = 'ShowSliderValue3(this.value)' style = "width:100%;" class="slider_range3" 
					  			type="range" step="10" value="0" min="0" max="500" name="monthly_rent_min"></input>
					  			
				  			 <span style="margin: 0 15%"> - </span>
					  			
					   		<font size = 3 id = "slider_value_view4" style="color: gray;">500만원</font>							  
								<input oninput = 'ShowSliderValue4(this.value)' style = "width:100%;" class="slider_range4" 
								type="range" step="10"value="500" min="0" max="500" name="monthly_rent_max"></input>
							</div>
						</div>
						
						<div class="form-group">
							
						</div>
					 </div>
		            </div>

	            </form>
        		</div>
          </div>
                   
           <div class="col-lg-roomlist">
          	<button class="btn_room btn pri-page"> 방 찾기</button>
          	<button class="btn_like btn notpri-page" onclick="location.href='<c:url value="findRooms-zzim"/>'"> 찜한 매물 </button>        	
        	<div class="roomlist_moum"> 
        	
        	     <c:forEach var="roomList" items="${roomList }">
        	     <div class="roomlist">
		    				<div class="destination">
		    				
		    				
		    				<c:forEach items="${obList}" var="obList" varStatus="i">
		    					<c:if test="${obList.room_id eq  roomList.room_id}">
			    					<a
										href='<c:url value="/detailView?room_id=${obList.room_id}" />'
										class="img img-2 d-flex justify-content-center align-items-center"
										style="background-image: url(${pageContext.request.contextPath}/resources/upload${obList.file_name});"></a>

								</c:if>
							</c:forEach>



		    					<div class="text p-3">
		    					
		    					<div class="text-mi"> 
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href='<c:url value="detailView?room_id=${roomList.room_id}" />'> ${roomList.subject} </a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><small>${roomList.deposit} / ${roomList.monthly_rent}</small></span>
		    							</div>
		    						</div>
		    						<p>
		    						${roomList.address }
		    						</p>
		    						
		    						</div>
		    						
		    						<hr>
		    						<p class="bottom-area d-flex">
		    						<input type="hidden" value="<c:out value='${roomList.room_id}'/>" id="room_id">
		    						
		    							<button id="zzim-id-${roomList.room_id}" class="text-zzim nozzim">
		    							
		    							<c:forEach var="wishList" items="${wishList }">
		    							
		    							<c:if test="${roomList.room_id == wishList.wish}">		    							
		    							<span class="zzim-showtext" id="zzim-ok-${roomList.room_id}"></span>	
		    						</c:if>

		    						</c:forEach>
		    							
		    							</button>

		    						<span class="ml-auto call"><a href="javascript:void(0);">call</a></span>
									<input type="hidden" value="<c:out value='${roomList.phone_number}'/>" id="phone_number">

		    						</p>
		    						
		    						
		    						<div class="modal">
									  <div class="modal_content" 
									       title="클릭하면 창이 닫힙니다.">
									    
									  </div>
									</div>



		    					</div>
		    				</div>
					</div>
		        </c:forEach>	
		        		
		        
          	<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27-page">
		              <ul>
		              
		                <c:if test="${pb.startPage > pb.pageBlock }">
		                <li> <a href='<c:url value="findOfficetel?pageNum=${pb.startPage-pb.pageBlock}" />'>&lt;</a></li>
					</c:if>
					<c:forEach var="i" begin="${pb.startPage }" end="${pb.endPage}" step="1">
		                <li class="active"><span> <a href='<c:url value="findOfficetel?pageNum=${i}" />'>${i}</a> </span></li>
					</c:forEach>
					<c:if test="${pb.endPage < pb.pageCount }">
		                <li><a href='<c:url value="findOfficetel?pageNum=${pb.startPage+pb.pageBlock}" />'>&gt;</a></li>
					</c:if>
		              </ul>
		            </div>
		          </div>
		        </div>

		        		
		    	</div>		
          	</div>
          	
		        
          </div><!-- .col-md-8 -->
        </div>

      
    </section> <!-- .section -->

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

        	// 목록 - [방 찾기] 클릭
        	$('.btn_room').click(function(){       		
        		if( $(this).hasClass('notpri-page') ) {
        			$(this).removeClass('notpri-page');
        			$(this).addClass('pri-page');
        			$('.btn_like').addClass('notpri-page');
        			$('.btn_like').removeClass('pri-page');
        		}
        	});
        	
        	// 목록 - [찜한 매물] 클릭
        	$('.btn_like').click(function(){       		
        		if( $(this).hasClass('notpri-page') ) {
        			$(this).removeClass('notpri-page');
        			$(this).addClass('pri-page');
        			$('.btn_room').addClass('notpri-page');
        			$('.btn_room').removeClass('pri-page');
        		}
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
        	 			
        	 		}
        	 	});

        	});
        	
        	// 목록 - [call] 클릭
        	$('.call').click(function () {    	
        		var filter = "win16|win32|win64|mac|macintel"; 
        		var phone_number = $(this).parent().children('#phone_number')[0].value;
        		
        		if ( navigator.platform ) { 
        			if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) {
        				location.href="tel:"+phone_number;
				
        			} else {
        				$(".modal_content").html("문의하기 <br> 전화번호 : " +phone_number)
        				
        				$(".modal").fadeIn();
        				
        				$(".modal_content").click(function(){
        					$(".modal").fadeOut(); 
        					});

        			} 
        		}
    		
    		});

    });

    
 // 보증금 최저
    function ShowSliderValue1(sVal) {
    	var obValueView = document.getElementById("slider_value_view1");
    	if(sVal>=10000){
    	obValueView.innerHTML = (sVal*0.0001).toFixed(1)+"억";
    	}else{		
    	obValueView.innerHTML = sVal+"만";
    	}
 	
    }

    // 보증금 최대
    function ShowSliderValue2(sVal) {
    	var obValueView = document.getElementById("slider_value_view2");
    	if(sVal>=10000){
    	obValueView.innerHTML = (sVal*0.0001).toFixed(1)+"억";
    	}else{		
    	obValueView.innerHTML = sVal+"만";
    	}
    }

    // 월세 최소
    function ShowSliderValue3(sVal) {
    	var obValueView = document.getElementById("slider_value_view3");
    	obValueView.innerHTML = sVal+"만";
    }

    // 월세 최대
    function ShowSliderValue4(sVal) {
    	var obValueView = document.getElementById("slider_value_view4");
    	obValueView.innerHTML = sVal+"만";
    }
    
    
 // 목록 [구조] 선택
    function rtypeCheckSelectAll()  {
  	  // 전체 체크박스
  	  const checkboxes 
  	    = document.querySelectorAll('input[name="room_type"]');
  	  // 선택된 체크박스
  	  const checked 
  	    = document.querySelectorAll('input[name="room_type"]:checked');
  	  // select all 체크박스
  	  const selectAll 
  	    = document.querySelector('input[name="room_all"]');
  	  
  	  if(checkboxes.length === checked.length)  {
  	    selectAll.checked = true;
  	  }else {
  	    selectAll.checked = false;
  	  }
  	}

  	function rtypeSelectAll(selectAll)  {
  		
  	  const checkboxes 
  	     = document.getElementsByName('room_type');
  	  
  	  
  	  checkboxes.forEach((checkbox) => {
  	    checkbox.checked = selectAll.checked
  	  })
  	}
    
 // 목록 [층 수 옵션]] 선택
    function ftypeCheckSelectAll()  {
  	  // 전체 체크박스
  	  const checkboxes 
  	    = document.querySelectorAll('input[name="living_floor"]');
  	  // 선택된 체크박스
  	  const checked 
  	    = document.querySelectorAll('input[name="living_floor"]:checked');
  	  // select all 체크박스
  	  const selectAll 
  	    = document.querySelector('input[name="floor_all"]');
  	  
  	  if(checkboxes.length === checked.length)  {
  	    selectAll.checked = true;
  	  }else {
  	    selectAll.checked = false;
  	  }
  	}

  	function ftypeSelectAll(selectAll)  {
  		
  	  const checkboxes 
  	     = document.getElementsByName('living_floor');
  	  
  	  
  	  checkboxes.forEach((checkbox) => {
  	    checkbox.checked = selectAll.checked
  	  })
  	}
    
    </script>

  
  </body>
</html>