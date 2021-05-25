<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Findhome</title>
  <link rel="stylesheet" href="resources/css/admin_meberjoin.css">
  
  <script src='<c:url value="/resources/script/jquery-3.6.0.js" />'></script>
  



 </head>
 
<body>
  <section class="left_section">
  
    <h3><a href="./">Findhome</a></h3>
      <img src="resources/images/user.png"  alt="profile" >

    <ul>
      <li><a href="./admin"><strong>대시보드</strong></a></li>
    </ul>
    <ul>
<!--       <li><a href=""><strong>개인회원 관리</strong></a></li> -->
	<li><strong>개인회원 관리</strong></li> 
      <li><a href="./admin_meberjoin">가입 승인</a></li>
      <li><a href="./admin_listPro">매물목록 관리</a></li>
</ul>
    </section>
 
  <section class="right_section">
  
    <div class="header clear">
      <h4>개인회원 관리</h4>
      <button class="logout"  onclick="location.href='<c:url value="/adminlogout" />' ">로그아웃</button>
    </div>
    
    <div class="dashboard">
     
      
      <div class="board_left">
        <div class="board_box">
          <p class="user-list-title">승인대기 회원 목록</p>
          <c:forEach var="mb"  items="${nList}">
          <p class="user-list">${mb.id} <input type="button"   value="가입승인"  id="btn-2"  onclick="location.href='<c:url value="/yUpdate?id=${mb.id}" />' "></p>
          </c:forEach>
          </div>
         </div>
         
 
      </div>

  </section>
       </body>
</html>      
             
  