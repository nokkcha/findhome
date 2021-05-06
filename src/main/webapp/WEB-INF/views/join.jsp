<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
    <script
	src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
    
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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.9/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.9/sweetalert2.min.js"></script>
    



<!-- 팝업창 관련 -->

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
<!-- <meta charset="EUC-KR"> -->


	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

	<style type="text/css">
	
		*{margin: 0;padding: 0;box-sizing: border-box}
		body{background-color: #f7f7f7;}
		ul>li{list-style: none}
		a{text-decoration: none;}
		.clearfix::after{content: "";display: block;clear: both;}

		#joinForm{width: 460px;margin: 0 auto;}
		ul.join_box{border: 1px solid #ddd;background-color: #fff;}
		.checkBox,.checkBox>ul{position: relative;}
		.checkBox>ul>li{float: left;}
		.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: #888;}
		.checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px;}
		.checkBox textarea{width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;}
		.footBtwrap{margin-top: 15px;}
		.footBtwrap>li{float: left;width: 50%;height: 60px;}
		.footBtwrap>li>button{display: block; width: 100%;height: 100%; font-size: 20px;text-align: center;line-height: 60px;}
		.fpmgBt1{background-color: #fff;color:#888}
		.fpmgBt2{background-color: #f85959; color: #fff}
		
	
	</style>
	
	
	
	
	
    
  </head>
  <body>
    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">dirEngine.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
          <li class="nav-item"><a href="tour.html" class="nav-link">Tour</a></li>
          <li class="nav-item"><a href="hotel.html" class="nav-link">Hotels</a></li>
          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item active"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Contact</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Contact Us</h1>
          </div>
        </div>
      </div>
    </div>

		<section class="ftco-section contact-section ftco-degree-bg">
      <div class="container login">
        <div class="row d-flex mb-5 contact-info">
<!--           <div class="col-md-12 mb-4"> -->
<!-- <!--             <h2 class="h4">Contact Information</h2> --> 
<!--           </div> -->
<!--           <div class="w-100"></div> -->
<!--           <div class="col-md-3"> -->
<!--             <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p> -->
<!--           </div> -->
<!--           <div class="col-md-3"> -->
<!--             <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p> -->
<!--           </div> -->
<!--           <div class="col-md-3"> -->
<!--             <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p> -->
<!--           </div> -->
<!--           <div class="col-md-3"> -->
<!--             <p><span>Website</span> <a href="#">yoursite.com</a></p> -->
<!--           </div> -->
        </div>
        
<!--         <script type="text/javascript"> -->
			   
<!-- 			</script> -->
			
        
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
				    var agree = $('#agree').val();
					var lengthRegex1 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
					var lengthRegex2 = /^[A-Za-z0-9!@#$%]{8,16}$/;
					var lengthRegex3 = /^(010|011)[-\s]?\d{3,4}[-\s]?\d{4}$/;
					
					
					if (id == "") {
						$('#id').focus();
// 						swal.fire("ID 입력", "ID를 입력해주세요", "error"); //"info,success,warning,error" 중 택1	
						alert("ID를 입력해주세요"); 
						return false;
					} 
					
					if (!lengthRegex1.exec(id)) {
						$('#id').focus();
						checkIdResult.innerHTML = "<font color='#FF0000'>올바르지 않은 이메일 양식입니다.</font>";
// 						swal.fire("ID 입력확인", "ID를 다시 입력해주세요", "error"); //"info,success,warning,error" 중 택1
						alert("ID를 다시 입력해주세요");
						return false;
					}
					
					if (pass1 == "") {
						$('#pass1').focus();
// 						swal.fire("패스워드 입력", "패스워드를 입력해주세요", "error"); //"info,success,warning,error" 중 택1
						alert("패스워드를 입력해주세요");
						return false;
					}
					
					if (!lengthRegex2.exec(pass1)) {
						$('#pass1').focus();
// 						swal.fire("패스워드 입력확인", "사용할 수 없는 패스워드입니다", "error"); //"info,success,warning,error" 중 택1
						alert("사용할 수 없는 패스워드입니다");
						return false;
					}
					
					if (pass2 == "") {
						$('#pass2').focus();
// 						swal.fire("패스워드 입력확인", "패스워드를 입력 해주세요", "error"); //"info,success,warning,error" 중 택1
						alert("패스워드를 입력 해주세요");
						return false;
					}
					
					if (pass1 != pass2) {
						$('#pass2').focus();
// 						swal.fire("패스워드 불일치", "패스워드를 다시 입력해주세요", "error"); //"info,success,warning,error" 중 택1
						alert("패스워드를 다시 확인 해주세요");
						return false;
					}
					
					
					if (phone == "") {
						$('#phone').focus();
// 						swal.fire("전화번호 입력", "전화번호를 입력해주세요", "error"); //"info,success,warning,error" 중 택1
						alert("전화번호를 입력해주세요");
						return false;
					}
					
					if (!lengthRegex3.exec(phone)) {
						$('#phone').focus();
// 						swal.fire("전화번호 입력확인", "전화번호를 다시 입력해주세요", "error"); //"info,success,warning,error" 중 택1
						alert("전화번호를 다시 입력해주세요");
						return false;
					}
					
					if($("#agree").is(":checked") == false){
						alert("이용약관 및 개인 정보 수집에 동의 하셔야 가입이 가능합니다");
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
			
			
        
			
			$(document).ready(function(){
				
				$(".fpmgBt2").click(function(){	
					if($(".chk1").is(":checked") == false){
						alert("이용약관에 동의 하셔야 다음 단계로 진행 가능합니다");
						return false;
					}else if($(".chk2").is(":checked") == false){
						alert("개인 정보 수집에 동의 하셔야 다음 단계로 진행 가능합니다");
						return false;
					} else {
						 $("#exampleModalLong").modal("toggle");
					}
					
				});	
				
				  $(".fpmgBt1").click(function(){
					    $("#exampleModalLong").modal("toggle");
					  });
				  
				  $(".agree").click(function(){
					    $("#exampleModalLong").modal({backdrop: "static"});
					  });
			});
			
			
			
 			
			

			function allCheck(obj) {
				$("[name=check2]").prop("checked", $(obj).prop("checked")); 
			}

			function oneCheck(obj) {
				var allObj = $("[name=check1]");
				var objName = $(obj).attr("name");

				if( $(obj).prop("checked")) {
					checkBoxLength = $("[name="+ objName +"]").length;

					checkedLength = $("[name="+ objName +"]:checked").length;

					if( checkBoxLength == checkedLength ) {
						allObj.prop("checked", true);


					} else {
						allObj.prop("checked", false);

					}
				}else {
					allObj.prop("checked", false);
					}
				}

				$(function(){
					$("[name=check1]").click(function(){
						allCheck(this);

						});
					$("[name=check2]").each(function(){
						$(this).click(function(){
							oneCheck(this);
							
						});
					});
				});
				
				
				$(document).ready(function () {
			        $('#fpmgBt1').click(function () {
			      
			          var check = $('input:checkbox[id="agree"]').is(':checked');
			          $("input:checkbox[id='agree']").prop("checked", false);
			          $("input:checkbox[id='chkAll']").prop("checked", false);
			          $("input:checkbox[id='fpmgBt2']").prop("checked", false);
			          
			        });
			       
			        $('#fpmgBt2').click(function () {
					      
				          var check = $('input:checkbox[id="agree"]').is(':checked');
				          $("input:checkbox[id='agree']").prop("checked", true);
				          $("input:checkbox[id='fpmgBt1']").prop("checked", false);
				          
				        });
			      });


				
				
				
	</script>
	
	
	
       
        <h2>회원가입</h2>
			<div class="row block-9">
				<div class="pr-md-5">
					<!-- col-md-6 제거함 -->
					<form action="#" id="login" name="login">
						<div class="form-group" align="left">
							<label class="form-control-label">이메일(ID)</label> <input type="text"
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

        		<label>

            <!--  팝업창 관련    -->
                    
                      <input type="checkbox" name="chkbox1" id="agree" value="0" data-toggle="modal" class="agree"> 
            	  	  이용약관 및 개인정보 취급방침에 동의합니다.
                       </label>
            	  	
            	  

                    <div class="form-group">
                    
                <input type="submit" value="회원가입" class="btn btn-primary py-3 px-5" id="btn">
              </div>
              
              </div>
            </form>
                 </div>      
                 
                      <!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLongTitle">이용약관</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<!--         ... -->
  
               
           <form action="http://localhost:8080/findhome/join" id="joinForm">
            <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,위치정보 이용약관(선택),
                        프로모션 안내 메일 수신(선택)에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="check1" id="chkAll" class="chkAll" onclick="allCheck()">
                        </li>
                    </ul>
                </li>
                <li class="checkBox check02">
                    <ul class="clearfix">
                        <li>이용약관 동의(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="check2"  class="chk1" id="chkAll"> 
                        </li>
                    </ul>
                    <textarea name="" id="">제1조(목적)
본 회원약관은 findhome(이하 '갑'라 한다)이 운영하는 인터넷관련 서비스(이하 '서비스'라 한다)를 이용함에 있어 관리자와 이용자(이하 '회원'라 한다)의 권리, 의무 및 책임사항을 규정함을 목적으로 한다.
제2조 (약관의 효력)
1.본 약관은 '갑'에 회원 가입 시 회원들에게 통지함으로써 효력을 발생합니다.
2.'갑'은 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.
3.약관의 변경사항 및 내용은 '갑'의 홈페이지에 게시하는 방법으로 공시합니다.
제3조 (약관 이외의 준칙)
이 약관에 명시되지 않은 사항이 전기 통신 기본법, 전기통신 사업법, 기타 관련 법령에 규정되어 있는 경우 그 규정에 따릅니다.
제4조 (이용계약의 체결)
회원 가입 시 회원 약관 밑에 있는 동의버튼을 누르면 약관에 동의하여 이 계약이 체결된 것으로 간주한다.
제5조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1.회원: '갑'과 서비스 이용에 관한 계약을 체결한 자
2.아이디(ID): 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 '갑'이 승인하는 문자와 숫자의 조합
3.비밀번호: 회원이 통신상의 자신의 비밀을 보호하기 위해 선정한 문자와 숫자의 조합
제6조 (이용신청)
1.회원 가입은 온라인으로 가입신청 양식에 기록하여 '갑'에 제출함으로써 이용신청을 할 수 있습니다.
2.가입희망 회원은 반드시 자신의 본명 및 주민등록번호로 이용신청을 하여야 하며, 1개의 ID만 신청을 할 수 있습니다.
제7조 (회원가입의 승낙)
'갑'의 회원 가입 신청 양식에 가입 희망 회원이 인터넷으로 제6조와 같이 신청하면 '갑'은 바로 가입을 승인하여 서비스를 이용할 수 있다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="check2" class="chk2" id="chkAll"> 
                        </li>
                    </ul>
 
                    <textarea name="" id="">('http://localhost:8080/findhome/join'이하 'findhome')은(는) 「개인정보 보호법」 제30조에 따라 정부주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.
○ 이 개인정보처리방침은 2021년 4월 26부터 적용됩니다.
제1조(개인정보의 처리 목적)
('http://localhost:8080/findhome/join'이하 'findhome')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 겨우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
1. 홈페이지 회원가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 만14세 미만 아동의 개인정보 처리 시 법정대리인의 동의여부 확인 목적으로 개인정보를 처리합니다.
2. 재화 또는 서비스 제공
서비스 제공, 본인인증을 목적으로 개인정보를 처리합니다.
3. 마케팅 및 광고에의 활용
이벤트 및 광고성 정보 제공 및 참여기회 제공 등을 목적으로 개인정보를 처리합니다.
제2조(개인정보의 처리 및 보유 기간)
① 은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.
② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
1.<홈페이지 회원가입 및 관리>
<홈페이지 회원가입 및 관리>와 관련한 개인정보는 수집.이용에 관한 동의일로부터<1년>까지 위 이용목적을 위하여 보유.이용됩니다.
보유근거 : 고객관리, 서비스 부정이용 방지
관련법령 : 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년
제3조(개인정보의 제3자 제공)
① 은(는) 개인정보를 제1조(개인정보의 처리 목적)에서 명시한 범위 내에서만 처리하며, 정보주체의 동의, 법률의 특별한 규정 등 「개인정보 보호법」 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.
② 은(는) 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.
		</textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>위치정보 이용약관 동의(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="check2" id="chkAll">
                        </li>
                    </ul>
 
                    <textarea name="" id=""> 제 1 조 (목적)
본 약관은 findhome이 제공하는 위치기반서비스에 대해 회사와 위치기반서비스를 이용하는 개인위치정보주체(이하 "이용자")간의 권리·의무 및 책임사항, 기타 필요한 사항 규정을 목적으로 합니다.
제 2 조 (이용약관의 효력 및 변경)
① 본 약관은 이용자가 본 약관에 동의하고 회사가 정한 절차에 따라 위치기반서비스의 이용자로 등록됨으로써 효력이 발생합니다.
② 회사는 법률이나 위치기반서비스의 변경사항을 반영하기 위한 목적 등으로 약관을 수정할 수 있습니다.
③ 약관이 변경되는 경우 회사는 변경사항을 최소 7일 전에 회사의 홈페이지 등 기타 공지사항 페이지를 통해 게시합니다.
④ 단, 개정되는 내용이 이용자 권리의 중대한 변경이 발생하는 경우에는 30일 전에 게시하도록 하겠습니다.
제 3 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항에 대해서는 위치 정보의 보호 및 이용 등에 관한 법률, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관계법령 및 회사가 정한 지침 등의 규정에 따릅니다.
제 4 조 (서비스의 내용)
회사는 직접 수집하거나 위치정보사업자로부터 수집한 이용자의 현재 위치 또는 현재 위치가 포함된 지역을 이용하여 아래와 같은 위치기반서비스를 제공합니다.
① 위치정보를 활용한 정보 검색결과 및 콘텐츠를 제공하거나 추천
② 생활편의를 위한 위치 공유, 위치/지역에 따른 알림, 경로 안내
③ 위치기반의 컨텐츠 분류를 위한 콘텐츠 태깅(Geotagging)
④ 위치기반의 맞춤형 광고
제 5 조 (서비스 이용요금)
회사가 제공하는 위치기반서비스는 무료입니다.
단, 무선 서비스 이용 시 발생하는 데이터 통신료는 별도이며, 이용자가 가입한 각 이동통신사의 정책에 따릅니다.
제 6 조 (서비스 이용의 제한·중지)
① 회사는 위치기반서비스사업자의 정책변경 등과 같이 회사의 제반사정 또는 법률상의 이유로 위치기반서비스를 유지할 수 없는 경우 위치기반서비스의 전부 또는 일부를 제한·변경·중지할 수 있습니다.
② 단, 위 항에 의한 위치기반서비스 중단의 경우 회사는 사전에 회사 홈페이지 등 기타 공지사항 페이지를 통해 공지하거나 이용자에게 통지합니다.
제 7 조 (개인위치정보주체의 권리)
① 이용자는 언제든지 개인위치정보의 수집·이용·제공에 대한 동의 전부 또는 일부를 유보할 수 있습니다.
② 이용자는 언제든지 개인위치정보의 수집·이용·제공에 대한 동의 전부 또는 일부를 철회할 수 있습니다. 이 경우 회사는 지체 없이 철회된 범위의 개인위치정보 및 위치정보 수집·이용·제공사실 확인자료를 파기합니다.
③ 이용자는 개인위치정보의 수집·이용·제공의 일시적인 중지를 요구할 수 있으며, 이 경우 회사는 이를 거절할 수 없고 이를 충족하는 기술적 수단을 마련합니다.
④ 이용자는 회사에 대하여 아래 자료에 대한 열람 또는 고지를 요구할 수 있으며, 해당 자료에 오류가 있는 경우에는 정정을 요구할 수 있습니다. 이 경우 정당한 사유 없이 요구를 거절하지 않습니다.
1. 이용자에 대한 위치정보 수집·이용·제공사실 확인자료
2. 이용자의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법령의 규정에 의하여 제3자에게 제공된 이유 및 내용
⑤ 이용자는 권리행사를 위해 본 약관 제14조의 연락처를 이용하여 회사에 요청할 수 있습니다.
       </textarea>
                </li>
                <li class="checkBox check04">
                    <ul class="clearfix">
                        <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="check2" id="chkAll">
                        </li>
                    </ul>
 
                </li>
            </ul>
            <ul class="footBtwrap clearfix">
<!--             <button type="button" class="btn " data-dismiss="modal">비동의</button> -->
<!--                 <li><button type="button" class="fpmgBt1 " data-dismiss="modal">동의</button></li> -->
<!--                 <li><button type="button"  name="checkButton" class="fpmgBt2" data-dismiss="modal" >동의</button></li> -->
					<li><input type="checkbox" class="fpmgBt1" id="fpmgBt1" onclick="myFun1()">동의하지 않습니다</li>
					<li><input type="checkbox" class="fpmgBt2" id="fpmgBt2" onclick="myFun2()" >동의합니다</li>
            </ul>
       </form>

<!--           <div class="col-md-6" id="map"></div> -->
        </div>
      </div>
       
            
    </section>


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