<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>



<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

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
.ftco-navbar-light {
	background-color: #000 !important;
	top: 0 !important;
}
</style>

</head>
<body>

	<%@ include file="../views/top.jsp"%>

	<section class="ftco-section ftco-degree-bg">
		
		<div class="container" align="left">
			<br>
			<h1>매물 등록</h1>
			<pre>
· 일반적인 형태의 주거용 전월세 매물만 내놓을 수 있습니다.
  1) 한 번의 방등록으로 반경 5km이내 모든 중개사무소에 방 정보가 노출되어 중개가 시작됩니다.
  2) 내놓은 방은 검증된 공인중개사가 1,900만 직방 이용자들에게 중개해 드립니다.
  3) 방을 내놓는 데에는 별도의 비용이 들지 않습니다. (거래 성사 시 법정 중개보수가 발생합니다)
· 등록된 매물은 30일 후에 중개가 종료되며, 중개사에게 방 내놓기·관리 메뉴에서 재등록이 가능합니다.
· 내놓은 방의 정보가 정확하지 않거나 가이드에 맞지 않는 경우, 중개가 종료되고 정보수정을 요청드릴 수 있습니다.
<!-- · 중개사무소는 개인 회원으로 중개사무소에 방내놓기 등록을 할 수 없고, 중개사무소 회원으로 가입해야 합니다.  -->
<!-- 	[중개사무소 가입신청하기] -->
· 아래와 같은 매물은 등록이 불가하며, 중개가 종료될 수 있습니다.
  (매매, 분양, 장기전세 / 고시텔, 원룸텔, 셰어하우스, 하숙, 게스트하우스, 숙박업소 등)
  </pre>
		</div>



		<div class="container">

			<form action='<c:url value="/writePro"/>' method="post" id="testForm">

				<table class="table">
					<thead align="left">
						<tr>
							<th colspan="3">위치 정보</th>
						</tr>
					</thead>
					<tbody align="left">
						<tr>
							<th style="background-color: #dedede;">주소</th>
							<!-- 					onkeyup="checkAddress()" -->
							<td><input type="text" id="address">
								<button onclick="checkAddress()">위치확인하기</button> <br> · 주소와 단지명 모두 검색이 가능합니다.<br> · 주소 입력 시에는 동/읍/면 으로 검색해 주세요. 예) 자곡동, 동읍면, 신월읍<br> · 오피스텔을 검색할 때에는 동/읍/면 이름과 단지 명을 함께 입력하면 좀 더 편하게 주소를 검색할 수 있습니다. 예) 계산동 하이베라스</td>
						</tr>

						<tr>
							<th style="background-color: #dedede;">지도</th>
							<td id="map">주소 입력 후 위치확인하기를 누르면 이 곳에 지도가 나타납니다.</td>
						</tr>
						<!-- 				<tr> -->
						<!-- 					<th style="background-color: #dedede;">나머지주소</th> -->
						<!-- 					<td><input type="text"></td> -->
						<!-- 				</tr> -->
					</tbody>
				</table>

				<table class="table">
					<thead align="left">
						<tr>
							<th colspan="3">사진 등록</th>
						</tr>
					</thead>
					<tbody align="left">
						<tr>
							<td colspan="2">· 사진 최소 5장 최대 15장 까지 등록할 수 있습니다.<br> · 아래에 등록 버튼을 클릭하여 사진을 선택하거나, 마우스로 사진을 끌어와서 등록할 수도 있습니다.<br> · 한꺼번에 여러 장 등록도 가능합니다.<br> · 직접 찍은 실제 방 사진의 원본을 등록해야 합니다.<br> · 워터마크, 날짜, 전화번호 등이 포함된 사진이나 방과 관련없는 사진을 등록할 경우 중개가 종료될 수 있습니다.
							</td>
						</tr>
					</tbody>
				</table>

				<table class="table">
					<tbody align="left">
						<tr>
							<td style="background-color: #dedede;"><button>+등록</button> <br>대표사진</td>
							<td style="background-color: #dedede;"><button>+등록</button> <br>화장실</td>
							<td style="background-color: #dedede;"><button>+등록</button> <br>주방</td>

							<td style="background-color: #dedede;"><input type="file" id="file" onChange="ajaxFileChange();" style="display: none;" /> <input type="button" id="btn-upload" onClick="ajaxFileUpload();" value="+등록" /><br>방사진 <!-- 					<input type="file" id="file" name="file" onchange="changeValue(this)"/> --> <!-- 					<button type="button" id="btn-upload">+등록</button><br>방사진 --></td>

							<td style="background-color: #dedede;"><button>+등록</button> <br>방사진</td>
						</tr>
						<tr>
							<td style="background-color: #dedede;"><button>+등록</button></td>
							<td style="background-color: #dedede;"><button>+등록</button></td>
							<td style="background-color: #dedede;"><button>+등록</button></td>
							<td style="background-color: #dedede;"><button>+등록</button></td>
							<td style="background-color: #dedede;"><button>+등록</button></td>
						</tr>
						<tr>
							<td style="background-color: #dedede;"><button>+등록</button></td>
							<td style="background-color: #dedede;"><button>+등록</button></td>
							<td style="background-color: #dedede;"><button>+등록</button></td>
							<td style="background-color: #dedede;"><button>+등록</button></td>
							<td style="background-color: #dedede;"><button>+등록</button></td>
						</tr>
					</tbody>
				</table>

				<table class="table">
					<thead align="left">
						<tr>
							<th colspan="3">상세 정보</th>
						</tr>
					</thead>
					<tbody align="left">
						<tr>
							<th style="background-color: #dedede;">보증금</th>
							<td><input type="text" id="deposit" name="deposit">만원</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">월세</th>
							<td><input type="text" id="monthly_rent" name="monthly_rent">만원</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">방구조</th>
							<td><select name="room_type">
									<option value="">선택하세요</option>
									<option value="오픈형 원룸 (방1)">오픈형 원룸 (방1)</option>
									<option value="분리형 원룸 (방1,거실1)">분리형 원룸 (방1,거실1)</option>
									<option value="복층형 원룸">복층형 원룸</option>
									<option value="투룸 (방2,거실1)">투룸 (방2,거실1)</option>
									<option value="쓰리룸+">쓰리룸+</option>
							</select></td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">관리비</th>
							<td><input type="text" id="fees" name="fees">만원 &nbsp;
							<input type="checkbox" id="include_fees" name="include_fees">없음<br>
							<b>관리비 포함 항목 </b>
							<input type="checkbox" id="include_fees" name="include_fees">전기세
							<input type="checkbox" id="include_fees" name="include_fees">가스
							<input type="checkbox" id="include_fees" name="include_fees">수도
							<input type="checkbox" id="include_fees" name="include_fees">인터넷
							<input type="checkbox" id="include_fees" name="include_fees">TV
							</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">크기</th>
							<td>전용면적 : <input type="text" id="cal2" name="exclusive_area_m">m<sup>2</sup>
							=<input type="text" id="cal1" name="exclusive_area_p">평 <br>
							계약면적 : <input type="text" id="cal4" name="contract_area_m">m<sup>2</sup>
							=<input type="text" id="cal3"  name="contract_area_p">평
							</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">층수</th>
							<td>건물 층 수 : <select name="floor">
									<option value="">선택하세요</option>
									<c:forEach var="i" begin="1" end="80">
										<option value="${i}층">${i}층</option>
									</c:forEach>

							</select> / 해당 층 : <select name="living_floor">
									<option value="">선택하세요</option>
									<option value="반지하">반지하</option>
									<option value="옥탑방">옥탑방</option>
									<c:forEach var="i" begin="1" end="80">
										<option value="${i}층">${i}층</option>
									</c:forEach>
							</select>
							</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">방향</th>
							<td><select name="direction">
									<option value="">선택하세요</option>
									<option value="동향">동향</option>
									<option value="서향">서향</option>
									<option value="남향">남향</option>
									<option value="북향">북향</option>
									<option value="남동">남동</option>
									<option value="남서">남서</option>
									<option value="북동">북동</option>
									<option value="북서">북서</option>
									<option value="기타">확인필요</option>
							</select></td>
						</tr>

						<tr>
							<th style="background-color: #dedede;">옵션</th>
							<td><input type="checkbox" id="options" name="options">에어컨 <input type="checkbox" name="option">냉장고 <input type="checkbox" name="option">세탁기 <input type="checkbox" name="option">가스레인지 <input type="checkbox" name="option">인덕션 <input type="checkbox" name="option">전자레인지<br> <input type="checkbox" name="option">책상 <input type="checkbox" name="option">책장 <input type="checkbox" name="option">침대 <input type="checkbox" name="option">옷장 <input type="checkbox" name="option">신발장 <input type="checkbox" name="option">싱크대<br></td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">전세 대출</th>
							<td><input type="radio" name="loan" id="loan" value="가능">가능 
							<input type="radio" name="loan" id="loan" value="불가능">불가능 
							<input type="radio" name="loan" id="loan" value="확인필요">확인필요</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">반려 동물</th>
							<td><input type="radio" name="pet" id="pet" value="가능">가능 
							<input type="radio" name="pet" id="pet"  value="불가능">불가능 
							<input type="radio"  name="pet" id="pet"  value="고양이만">고양이만 
							<input type="radio"  name="pet" id="pet"  value="확인필요">확인필요</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">주차</th>
							<td><input type="radio"  name="parking" id="parking" value="가능">가능 
							<input type="radio" name="parking" id="parking"  value="없음">없음</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">엘리베이터</th>
							<td><input type="radio" name="elevator" id="elevator" value="있음">있음 
							<input type="radio" name="elevator" id="elevator"  value="없음">없음</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">입주가능일</th>
							<td><input type="date" name="m_date" id="m_date"></td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">제목</th>
							<td><input type="text" name="subject" id="subject">제목</td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">상세설명</th>
							<td><textarea name="content" id="content" 
							placeholder="해당 방에 대한 특징과 소개를 최소 50자 이상 입력해야 합니다."  rows="10" cols="60"></textarea></td>
						</tr>
						<tr>
							<th style="background-color: #dedede;">연락처</th>
							<td><input type="text" readonly="readonly" name="phone_number" id="phone_number" value="010-8888-9999"></td>
						</tr>

					</tbody>

					<!-- 			<tbody align="left"> -->
					<!-- 				<th>건물 유형</th> -->
					<!-- 				<td><button type="button" class="btn btn-info">원룸</button></td> -->
					<!-- 				<td>오피스텔</td> -->
					<!-- 			</tbody> -->
				</table>

				<input type="text" id="seller_id" hidden="" name="seller_id" value="admin@gmail.com">
				
				<button class="btn btn-primary btn-lg btn-block" id="sellRoom">방 내놓기</button>
			</form>

		</div>
		<!-- 		end of container -->

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



	<!-- 	<!-- loader -->
	-->
	<!-- 	<div id="ftco-loader" class="show fullscreen"> -->
	<!-- 		<svg class="circular" width="48px" height="48px"> -->
	<%-- 			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" /> --%>
	<%-- 			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg> --%>
	<!-- 	</div> -->

	<!-- services 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e97625a0c2b00cdf9292bd703ece0f7&libraries=services,clusterer,drawing">
		
	</script>

	<script type="text/javascript">
		function checkAddress() {
			var addr = document.getElementById('address').value;
			if (addr == null) {
				//return;
				addr = '서울특별시 영등포구 여의동로 330 한강사업본부 여의도안내센터';
			}

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

			//var address = '서울특별시 영등포구 여의동로 330 한강사업본부 여의도안내센터';

			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							addr,
							function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									// 인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:150px;text-align:center;padding:6px 0;">판매 매물 위치</div>'
											});
									infowindow.open(map, marker);

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								} else {
									alert("주소를 다시 확인해주세요"); //+ addr);
								}
							});
		}
	</script>

	<script type="text/javascript">
		$(function() {
			$('#btn-upload').click(function(e) {
				e.preventDefault();
				$('#file').click();
			});
		});

		// 매물 내놓기 버튼 클릭 이벤트
		$(function() {
			$('#sellRoom').click(function(e) {

			});
		});

		function changeValue(obj) {
			alert(obj.value);
		}

		// 전용면적(exclusive private area) 평수 계산
		$('#cal1').focusout(
				function() {
					document.getElementById('cal2').value = parseFloat(document
							.getElementById('cal1').value) * 3.3058;
				})

		$('#cal2').focusout(
				function() {
					document.getElementById('cal1').value = parseFloat(document
							.getElementById('cal2').value) / 3.3058;
				})

		$('#cal3').focusout(
				function() {
					document.getElementById('cal4').value = parseFloat(document
							.getElementById('cal3').value) * 3.3058;
				})

		$('#cal4').focusout(
				function() {
					document.getElementById('cal3').value = parseFloat(document
							.getElementById('cal4').value) / 3.3058;
				})

		function ajaxFileUpload() {
			// 업로드 버튼이 클릭되면 파일 찾기 창을 띄운다.
			jQuery("#ajaxFile").click();
		}

		function ajaxFileChange() {
			// 파일이 선택되면 업로드를 진행한다.
			ajaxFileTransmit();
		}

		function ajaxFileTransmit() {
			var form = jQuery("ajaxFrom")[0];
			var formData = new FormData(form);
			formData.append("message", "파일 확인 창 숨기기");
			formData.append("file", jQuery("#ajaxFile")[0].files[0]);

			jQuery.ajax({
				url : "./ajaxFormReceive.php",
				type : "POST",
				processData : false,
				contentType : false,
				data : formData,
				success : function(json) {
					var obj = JSON.parse(json);
				}
			});
		}
	</script>


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
	<!-- 	<script -->
	<%-- 		src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<!-- 	<script -->
	<!-- 		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>