<%@page import="com.fasterxml.jackson.annotation.JsonTypeInfo.Id"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!--     메뉴(네비게이션) 시작 -->
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="./">FindHome</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
<!--           <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li> -->
          <li class="nav-item"><a href="./findRooms" class="nav-link">원룸</a></li>
          <li class="nav-item"><a href="./findOfficetel" class="nav-link">오피스텔</a></li>
          <li class="nav-item"><a href="./sellRoom" class="nav-link">매물 등록</a></li>
          <li class="nav-item"><a href="./detailView" class="nav-link">매물 상세</a></li>
<!--           <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li> -->
        </ul>
      </div>
      
<!--       <div class="collapse navbar-collapse" id="ftco-nav"> -->
<!--         <ul class="navbar-nav ml-auto">           -->
<!--           <li class="nav-item"><a href="./login" class="nav-link">로그인</a></li> -->
<%--           <li class="nav-item"><a href='<c:url value="/join_choice" />' class="nav-link">회원가입</a></li> --%>
<!--           <li class="nav-item"><a href="./memberInfo" class="nav-link">회원정보</a></li> -->
<!--         </ul> -->
<!--       </div> -->

      
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto"> 
        <%
       String id=(String)session.getAttribute("id");
          if(id == null) {%>      
            <li class="nav-item"><a href="./login" class="nav-link">로그인</a></li>
                <li class="nav-item"><a href='<c:url value="/join_choice" />' class="nav-link">회원가입</a></li>
         <%}else{ %>   
               <li class="nav-item"><a href="./memberInfo" class="nav-link">회원정보</a></li>
      
          <%} %>
        </ul>
      </div>


    </div>
  </nav>
    <!-- END nav -->