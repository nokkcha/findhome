<%@page import="com.fasterxml.jackson.annotation.JsonTypeInfo.Id"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!--     메뉴(네비게이션) 시작 -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="./">FindHome</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" 
		data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> 메뉴
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav" >
			<ul class="navbar-nav ml-auto">
			
			<li class="nav-item dropdown"><a class="nav-link" href="./findRooms" data-bs-toggle="dropdown"> 원룸 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="./findRooms"> 방 찾기 </a></li>
								<li><a class="dropdown-item" href="./findRooms-zzim"> 찜한 매물 </a></li>
								<li><a class="dropdown-item" href="./sellRoom?category=OneRoom"> 방 내놓기 </a></li>
							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link" href="./findOfficetel" data-bs-toggle="dropdown"> 오피스텔 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="./findOfficetel"> 방 찾기 </a></li>
								<li><a class="dropdown-item" href="./findRooms-zzim"> 찜한 매물 </a></li>
								<li><a class="dropdown-item" href="./sellRoom?category=Officetel"> 방 내놓기 </a></li>
							</ul></li>
			</ul>
		</div>

<!-- 		<div class="collapse navbar-collapse" id="ftco-nav"> -->
			<ul class="navbar-nav ml-auto">

				<c:if test="${id ==null}">
					<li class="nav-item"><a class="nav-link" href="./login" class="nav-link">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href='<c:url value="/join_choice" />' class="nav-link">회원가입</a></li>
				</c:if>

				<c:if test="${id != null}">
					<li class="nav-item"><a href="./memberInfo" class="nav-link">회원정보</a></li>

					<c:if test="${seller_id != null}">
						<li class="nav-item"><a href="./member_seller" class="nav-link">관리페이지</a></li>
					</c:if>

					<li class="nav-item"><a href="./logout" class="nav-link">로그아웃</a></li>
				</c:if>

			</ul>
<!-- 		</div> -->

	</div>
</nav>
<!-- END nav -->