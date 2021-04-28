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
			   function checkId() {
				   var id = document.login.id.value;
				   var lengthRegex1 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
					var checkIdResult = document.getElementById('checkIdResult');
				   
				   if(!lengthRegex1.exec(id)) {
					   checkIdResult.innerHTML = "<font color='#FF0000'>올바르지 않은 이메일 양식입니다.</font>";
					  return false;
				   } else {
					   checkIdResult.innerHTML = " ";
					   return true;
				   }
				   
			   }


			   
			   
				function checkPassword() {
					var pass1 = $('#pass1').val();

					var lengthRegex2 = /^[A-Za-z0-9!@#$%]{8,16}$/;
					var alphabetUpperRegex = /[A-Z]/; // 대문자 판별
					var alphabetLowerRegex = /[a-z]/; // 소문자 판별
					var numberRegex = /[0-9]/; // 숫자 판별
					var specRegex = /[!@#$%]/; // 특수문자(!@#$%) 판별		
					var checkResult = document.getElementById('checkPasswordResult');
					
					
					
					if (lengthRegex2.exec(pass1)) {
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
						case 3:
							checkResult.innerHTML = "<font color='#006400'>안전</font>";
							break;
						case 2:
							checkResult.innerHTML = "<font color='#FFD700'>보통</font>";
							break;
						default:
							checkResult.innerHTML = "<font color='#FF0000'>위험</font>";
							break;
						}
						
						
					} else {
						checkResult.innerHTML = "<font color='#FF0000'>8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</font>";
					} 
				}
				
				
				function checkPhone() {
					var phone = $('#phone').val();
					var checkPhone = document.getElementById('checkPhoneResult');
 					var lengthRegex3 = /^(010|011)[-\s]?\d{3,4}[-\s]?\d{4}$/;
					
					
					if(!lengthRegex3.exec(phone)) {
						checkPhone.innerHTML = "<font color='#FF0000'>올바르지 않은 휴대폰 번호입니다.</font>";
						return false;
					} else {
						checkPhone.innerHTML = " ";
						return true;
					}
				}

				
				
				$(document).ready(function() {
					
					$('#login').submit(function() {

						var id = $('#id').val();
						var pass1 = $('#pass1').val();
						var pass2 = $('#pass2').val();
						var phone = $('#phone').val();
						var lengthRegex1 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
						var lengthRegex2 = /^[A-Za-z0-9!@#$%]{8,16}$/;
						var lengthRegex3 = /^(010|011)[-\s]?\d{3,4}[-\s]?\d{4}$/;
						
						if (id == "") {
							$('#id').focus();
							swal.fire("ID 입력", "ID를 입력해주세요", "error") //"info,success,warning,error" 중 택1							
							return false;
						}
						
						if (!lengthRegex1.exec(id)) {
							$('#id').focus();
							swal.fire("ID 입력확인", "ID를 다시 입력해주세요", "error") //"info,success,warning,error" 중 택1							
							return false;
						}
						
						if (pass1 == "") {
							$('#pass1').focus();
							swal.fire("패스워드 입력", "패스워드를 입력해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
						if (pass2 == "") {
							$('#pass2').focus();
							swal.fire("패스워드 입력확인", "패스워드를 입력 해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
						if (pass1 != pass2) {
							$('#pass2').focus();
							swal.fire("패스워드 불일치", "패스워드를 다시 입력해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
						if (!lengthRegex2.exec(pass1)) {
							$('#pass1').focus();
							swal.fire("패스워드 입력확인", "사용할 수 없는 패스워드입니다", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
						if (phone == "") {
							$('#phone').focus();
							swal.fire("전화번호 입력", "전화번호를 입력해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
						if (!lengthRegex3.exec(phone)) {
							$('#phone').focus();
							swal.fire("전화번호 입력확인", "전화번호를 다시 입력해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
						
					});
				});
				
				
				function checkPassword2() {
					var pass1 = $('#pass1').val();
					var pass2 = $('#pass2').val();
					
					var checkResult3 = document.getElementById('checkPasswordResult3');
					
					if(pass1 != pass2) {
						checkResult3.innerHTML = "<font color='#FF0000'>비밀번호 불일치</font>";
					} else {
						checkResult3.innerHTML = "<font color='#000000'>비밀번호 일치</font>";
					}
				}
			</script>
			<h2>회원가입</h2>
			<div class="row block-9">
				<div class="pr-md-5">
					<!-- col-md-6 제거함 -->
					<form action="#" id="login" name="login">
						<div class="form-group" align="left">
							<label class="form-control-label">아이디</label> <input type="text"
								class="form-control" name="id" id="id"
								onkeyup="checkId()">
								
							<br><span class="check-group" id="checkIdResult"></span>	

						</div>
						<div class="form-group" align="left">
							<label class="form-control-label">비밀번호</label><input
								type="password" class="form-control" name="pass1" id="pass1"
								onkeyup="checkPassword()">
								
						  <br><span class="check-group" id="checkPasswordResult"></span>
						</div>
						
						<div class="form-group" align="left">
							<label class="form-control-label">비밀번호 확인</label><input
								type="password" class="form-control" name="pass2" id="pass2"
								onkeyup="checkPassword2()">
								
						  <br><span class="check-group" id="checkPasswordResult3"></span>
						</div>
						<div class="form-group" align="left">
							<label class="form-control-label">휴대폰 번호</label><input type="tel"
								class="form-control" name="phone" id="phone"
								onkeyup="checkPhone()">
								
						  <br><span class="check-group" id="checkPhoneResult"></span>	
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