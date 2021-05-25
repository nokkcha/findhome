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
  <link rel="stylesheet" href="resources/css/admin_style.css">
  
  <script src='<c:url value="/resources/script/jquery-3.6.0.js" />'></script>

 </head>
 
<body>
  <section class="left_section">
  
    <h3>Findhome</h3>
      <img src="resources/images/user.png"  alt="profile" >

    <ul>
      <li><a href=""><strong>대시보드</strong></a></li>
    </ul>
    <ul>
      <li><a href=""><strong>개인회원 관리</strong></a></li>
      <li><a href="">사용자 관리</a></li>
      <li><a href="">가입 승인</a></li>
      <li><a href="">매물목록 관리</a></li>
</ul>
    </section>
 
  
  <section class="right_section">
  
    <div class="header clear">
      <h4>개인회원 관리</h4>
      <button class="logout"  onclick="location.href='<c:url value="/adminlogout" />' ">로그아웃</button>
    </div>
    
    <div class="dashboard">
      <h5>Dashboard</h5>
      
      <div class="board_left">
        <div class="board_box">
          <p>승인대기 회원 목록</p>
          <c:forEach var="mb"  items="${nList}">
          <p>${mb.id} <input type="button"   value="가입승인"  id="btn-2"  onclick="location.href='<c:url value="/yUpdate?id=${mb.id}" />' "></p>
          </c:forEach>
          </div>
         </div>
         
        <div class="board_center">  
        <div class="board_box">
          <p>매몰신고 리스트</p>  
          <table border="1" class="type09">
            <caption>
              
              <div></div>
            </caption>
            
            <colgroup>
              <col>
              <col>
              <col>
            </colgroup>
            <thead>
              <tr>
                <th>문의 아이디</th>
                <th>내용</th>
                <th>방 아이디</th>
              </tr>
            </thead>
            <tbody>
<!--                 <tr> -->
<!--                 <th>qna_id</th> -->
<!--                 <th>content</th> -->
<!--                 <th>room_id</th> -->
<!--                 </tr> -->
           
               <%
          %>
              
              
              <tbody>
               <c:forEach var="ReportBean"  items="${reportList }">  
              <tr>
                <td>${ReportBean.qna_id }</td>
                <td>${ReportBean.content }</td>
                <td>${ReportBean.room_id }</td>
              </tr>
                  </c:forEach>
           
            </tbody>
             <%
    %>      
    
            </table>
          </div>
      </div>
      </div>

  </section>
       </body>
</html>      
             
  