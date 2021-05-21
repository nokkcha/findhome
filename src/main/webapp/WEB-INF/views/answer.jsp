<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
    <style type="text/css">
    	
#answerFr {
	justify-content: center;
	display: block;
	margin-left: 50px;
}
textarea {
	background: none;
	border: 1px solid gray;
}

#answerBtn {
 width: 450px;
   padding: 5px;
}
	
#answerBtn:hover {
	background: black;
	color: white;
	cursor: pointer;
}

.qna-ta-co {
	height: 175px;
	
}

 
    </style>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member_seller.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
  
  </head>
  <body>

  
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light01" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="./">FindHome</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
	
	
			<nav class="navbar navbar-expand-lg navbar-dark">
				<div class="container-fluid">

				</div>
			</nav>
			
					<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
	
							<li class="nav-item dropdown"><a class="nav-link" href="#" data-bs-toggle="dropdown"> 관리페이지 </a>
					<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="./member_seller"> 대시보드 </a></li>
									<li><a class="dropdown-item" href="./salesList"> 매물관리 </a></li>
									<li><a class="dropdown-item" href="./qnaList/"> 문의관리 </a></li>
								</ul>
					</li>
					<li class="nav-item"><a href='<c:url value="/logout" />' class="nav-link">로그아웃</a></li>
	
	
				</ul>
			</div>
			
		</div>
	</nav>


    
	<div class="seller-side"> 
	
		<nav>
			<a href="./member_seller" class="nav-side"> 대시보드</a>

		<div class="sell-dropdown">
		  <a class="dropbtn nav-side">매물관리</a>
		  <div class="dropdown-content">
		    <a href="./salesList">판매 중인 매물</a>
		    <a href="./soldList">판매 완료 매물</a>
		  </div>
		</div>
			
			<a href="./qnaList" class="nav-side" style="color: black;"> 문의관리 </a>
		
		</nav>
	
	
	</div>

    <section class="seller-wrap">


		   

	<div class="seller-mail">


				
		<table class="type09">
			<tr>
				<th class="qna-no"> No  </th>
				<th class="qna-id"> Room No  </th>
				 <th class="qna-sn"> Sender </th> 
			</tr>
			
			<tr>
				<td> ${qb.qna_id}  </td> <td> ${qb.room_id}  </td> <td> ${qb.sender} </td>
			</tr>
			
			<tr>
				<th colspan="3" class="qna-co"> Content </th>
			</tr>
			
			<tr>
				<td colspan="3" class="qna-ta-co"> ${qb.content} </td>
			</tr>
 
 
		</table>
		

		<form action='<c:url value="/answerPro" />' id="answerFr">
		<input type="hidden" value="${qb.qna_id}" name=qna_id> 
		 <textarea rows="10" cols="71" name="answer" id="answer" maxlength="100"> </textarea> <br>
		<input type="submit" value="답변하기" id="answerBtn">
		</form>
	</div>

		        
	</section>
	





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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
  
  
<script src="../script/jquery-3.6.0.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		
		
		$('#answer').val('${qb.answer}');
		
		$('#answerFr').submit(function() {

			if($('#answer').val()=="") {
				alert("답변을 입력해주세요.");
				return false;
				
			}
			if('${qb.answerYN}'=="Y") {
				alert("이미 답변한 문의입니다.");
				return false;
				
			}
				
		});

	});
	
	
	</script>


  
  
  </body>
</html>