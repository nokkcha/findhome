<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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

<input type="hidden" id="member_type" value=${mb.member_type }>

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
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Member Information</h1>
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
					var pass1 = $('#password').val();

					var lengthRegex2 = /^[A-Za-z0-9!@#$%]{8,16}$/;
					var alphabetUpperRegex = /[A-Z]/; // 대문자 판별
					var alphabetLowerRegex = /[a-z]/; // 소문자 판별
					var numberRegex = /[0-9]/; // 숫자 판별
					var specRegex = /[!@#$%]/; // 특수문자(!@#$%) 판별		
					var checkResult = document.getElementById('checkPasswordResult');
					
					var checkResult2 = document
					.getElementById('checkPasswordResult2');
										
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
					var phone = $('#phone_number').val();
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
						var pass1 = $('#password').val();
						var pass2 = $('#password2').val();
						var phone = $('#phone_number').val();
						var lengthRegex1 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
						var lengthRegex2 = /^[A-Za-z0-9!@#$%]{8,16}$/;
						/* var lengthRegex3 = /^(010|011)[-\s]?\d{3,4}[-\s]?\d{4}$/; */
						
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
							$('#password').focus();
							swal.fire("패스워드 입력", "패스워드를 입력해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
						if (pass2 == "") {
							$('#password').focus();
							swal.fire("패스워드 입력확인", "패스워드를 입력 해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
						if (pass1 != pass2) {
							$('#password').focus();
							swal.fire("패스워드 불일치", "패스워드를 다시 입력해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
// 						if (!lengthRegex2.exec(pass1)) {
// 							$('#password').focus();
// 							swal.fire("패스워드 입력확인", "사용할 수 없는 패스워드입니다", "error") //"info,success,warning,error" 중 택1
// 							return false;
// 						}
						
						if (phone == "") {
							$('#phone_number').focus();
							swal.fire("전화번호 입력", "전화번호를 입력해주세요", "error") //"info,success,warning,error" 중 택1
							return false;
						}
						
// 						if (!lengthRegex3.exec(phone)) {
// 							$('#phone_number').focus();
// 							swal.fire("전화번호 입력확인", "전화번호를 다시 입력해주세요", "error") //"info,success,warning,error" 중 택1
// 							return false;
// 						}
						
						

					});
				});
				
				
				function checkPassword2() {
					var pass1 = $('#password').val();
					var pass2 = $('#password2').val();
					
					var checkResult3 = document.getElementById('checkPasswordResult3');
					
					if(pass1 != pass2) {
						checkResult3.innerHTML = "<font color='#FF0000'>비밀번호 불일치</font>";
					} else {
						checkResult3.innerHTML = "<font color='#000000'>비밀번호 일치</font>";
					}
				}
				
				
			</script>
			
<script type="text/javascript">
	$(document).ready(function () { 
		var checkValue = $('#member_type').val();
		//alert(checkValue);
          console.log(checkValue);
				
	          if (checkValue == "seller") {
					$('#login').attr("action","<c:url value="/memberInfoPro2" />");
	
				} else {									
					$('#login').attr("action","<c:url value="/memberInfoPro" />");
				}
	});		
</script>


			<h2>회원 정보</h2>
			<div class="row block-9">
				<div class="pr-md-5">
					<!-- col-md-6 제거함 -->
					<form action='<c:url value="/memberInfoPro" />' id="login" name="login" method="post">
						<div class="form-group" align="left">
							<label class="form-control-label">아이디</label> <input type="text"
								class="form-control" name="id" id="id" value="${mb.id }" readonly
								onkeyup="checkId()">
								
							<br><span class="check-group" id="checkIdResult"></span>	

						</div>
												
						<div class="form-group" align="left">
							<label class="form-control-label">기존 비밀번호</label><input
								type="password" class="form-control" name="password" id="password"
								>
<!-- 								onkeyup="checkPassword()" -->
								
						  <br><span class="check-group" id="checkPasswordResult"></span>
						</div>
						
						<div class="form-group" align="left">
							<label class="form-control-label">기존 비밀번호 확인</label><input
								type="password" class="form-control" name="password2" id="password2"
								>
<!-- 								onkeyup="checkPassword2()" -->
								
						  <br><span class="check-group" id="checkPasswordResult3"></span>
						</div>
						
						<div class="form-group" align="left">
							<label class="form-control-label">새 비밀번호</label><input
								type="password" class="form-control" name="newPassword" id="newPassword"
								>
<!-- 								onkeyup="checkPassword()" -->
								
						  <br><span class="check-group" id="checkPasswordResult"></span>
						</div>
						
						<div class="form-group" align="left">
							<label class="form-control-label">새 비밀번호 확인</label><input
								type="password" class="form-control" name="newPassword2" id="newPassword2"
								>
<!-- 								onkeyup="checkPassword()" -->
								
						  <br><span class="check-group" id="checkPasswordResult"></span>
						</div>
						
						
						<div class="form-group" align="left">
							<label class="form-control-label">휴대폰 번호</label><input type="tel"
								class="form-control" name="phone_number" id="phone" value="${mb.phone_number }"
								">
<!-- 								onkeyup="checkPhone() -->
								
						  <br><span class="check-group" id="checkPhoneResult"></span>	
						</div>

						<div class="form-group">
							<input type="submit" value="정보 수정"
								class="member-info-btn" id="btn">
						</div>
						
						<span class="delete-text"> 서비스를 더이상 사용하지 않으시려면 <a href="memberDelete">회원 탈퇴하기> </a> </span>
						
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