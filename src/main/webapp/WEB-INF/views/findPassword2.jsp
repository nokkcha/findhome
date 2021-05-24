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
	    .find{margin-top: 225px;}
		.bx{width: 100%; display: flex; justify-content: center; align-items: center;}
		.fw{min-height: 500px; max-height: 550px; min-width: 380px; max-width: 400px;
		    display: flex; flex-basis: auto; 
		    flex-direction: column; border: 1px solid #d4d0d0; border-radius: 6px;}
		.se{display: flex; flex-direction: column; height: 100%; min-height: 460px;
		    max-height: 550px; position: relative; padding: 30px 10px 0px;}
		.di{margin-bottom: 30px;}	
		.em{text-align: center;}	
		.pa{padding-right: 16px; padding-left: 15px; padding-bottom: 10px;}
		.em2{width: 90%; text-align: center; margin: auto;}
		.font{font-size: 15px; width: 90%; height: 45px; 
			 padding: 0px; padding-right: 13px; padding-left: 13px;}
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
				
				$('#find').submit(function() {

				   var lengthRegex1 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
				   var id = $('#id').val();
				   
	      			if (id == "") {
						$('#id').focus();
						alert("ID를 입력해주세요"); 
						return false;
	      			}
					if(!lengthRegex1.exec(id)) {
					    alert("올바르지 않은 이메일 양식입니다.")
						return false;
					 } 
					

	      		});
			});
	
	
	</script>
  <form class="find" action='<c:url value="/findPasswordPro2" />' id="find">

	<div class="bx">
	  <div class="fw">
		<section class="se">
			<div class="di">
			 <div class="em">가입하신 이메일 주소를 입력해주세요.</div>
			 </div>
			  <div class="pa">
			   <div class="em2"><input type="text" placeholder="이메일 주소" maxlength="50" class="font" name="id" id="id" >
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