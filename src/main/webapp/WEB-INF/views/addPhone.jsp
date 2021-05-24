<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<script
	src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
	
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<style type="text/css">
	    .add{margin-top: 225px;}
		.bx{width: 100%; display: flex; justify-content: center; align-items: center;}
		.fw{min-height: 500px; max-height: 550px; min-width: 380px; max-width: 400px;
		    display: flex; flex-basis: auto; 
		    flex-direction: column; border: 1px solid #d4d0d0; border-radius: 6px;}
		.se{display: flex; flex-direction: column; height: 100%; min-height: 460px;
		    max-height: 550px; position: relative; padding: 30px 10px 0px;}
		.di{margin-bottom: 30px;}	
		.em{text-align: center;}	
		.pa{padding-right: 16px; padding-left: 15px; padding-bottom: 10px;}
		.em2{width: 90%; text-align: center; margin: auto; }
		.font{font-size: 16px; width: 90%; height: 45px; font-style:#d4d0d0;
			 padding: 0px; padding-right: 13px; padding-left: 13px; outline: none;
			 border-bottom: 1px solid #d4d0d0; border-top:0px solid; border-right: 0px solid; border-left: 0px solid;}
		.ph{font-size: 11px; text-decoration: underline; margin-left: 265px;}	
		.fp{color: #4d4d4d;} 
		.ba{position: absolute; left: 10px; right: 10px; bottom: 10px; height: 50px;}	 
		.bt{background-color: #dc3545; /* display: flex; */ height: 50px;} 
		.btn{line-height: 50px; text-align: center;}
/* 		.ne{color: white; font-size: 18px; font-weight: bold; line-height: 20px; text-align: center; */
/* 		    width: 100%; height: 50px; background-color: #dc3545; display: flex; box-shadow: 0;}	  */
        .next {background-color: #dc3545; border: solid #dc3545; text-align: center; font-size: 16px;
                   color: #FFF; font-weight: bold; width: 100%; height: 50px;
                   text-decoration: none;}  
	</style>
</head>
<body>

	<script type="text/javascript">

			$(document).ready(function() {
				$('#add').submit(function() {
					var phone = $('#phone').val();
					var lengthRegex3 = /^(010|011)[-\s]?\d{3,4}[-\s]?\d{4}$/;
					if (phone == "") {
						$('#phone').focus();
						alert("전화번호를 입력해주세요");
						return false;
					}
					
					if (!lengthRegex3.exec(phone)) {
						$('#phone').focus();
						alert("전화번호를 다시 입력해주세요");
						return false;
					}
				});
			
			});

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
		
	
	</script>
  <form class="add" action='<c:url value="/addPhonePro" />' id="add">

	<div class="bx">
	  <div class="fw">
		<section class="se">
			<div class="di">
			 <div class="em">휴대폰 번호를 입력하시면 <br> 문의 시 더욱 편리하게 연결됩니다.</div>
			 </div>
			  <div class="pa">
			   <div class="em2"><input type="tel" spellcheck="true" data-focusable="true" maxlength="11" class="font" name="phone" id="phone" onkeyup="checkPhone()" >
			   		<br><span class="check-group" id="checkPhoneResult"></span>
			   </div>
			  </div> 
			   <div>
			    <div class="ph"> <a href='<c:url value="/"/>' class="fp">나중에 하기</a>
			    </div>
			    </div>
			     <div class="ba">
			      <div class="bt"> 
			       <div class="btn">
<%-- 			     	<a href='<c:url value="/login" />' class="next">다음</a>	 --%>
			     	 <input type="submit" value="다음" class="next">	
			       </div>
			      </div>
			     </div> 
		</section>	 
     </div>  
	</div>
 </form>	
</body>
</html>