package com.itwillbs.domain;

public class RoomBean {
	int room_id; // '매물 ID
    String address; // 주소
    int deposit; //보증금   
    int monthly_rent; //월세
    String room_type; //방구조
    int fees; //관리비
    
//    `include_fees`      JSON             NULL        COMMENT '''fees'': [ 	{''name'': ''전기세''}, 	{''name'': ''가스''}, 	{''name'': ''수도''}, 	{''name'': ''인터넷''}, 	{''name'': ''TV''}, ]', 
//    `exclusive_area_m`  DECIMAL(20,2)    NULL        DEFAULT 3.31 COMMENT '전용면적 (제곱미터)', 
//    `exclusive_area_p`  DECIMAL(20,2)    NULL        DEFAULT 1.00 COMMENT '전용면적 (평)', 
//    `contract area_m`   DECIMAL(20,2)    NULL        DEFAULT 3.31 COMMENT '계약면적 (제곱미터)', 
//    `contract area_p`   DECIMAL(20,2)    NULL        DEFAULT 1.00 COMMENT '계약면적 (평)', 
    
    String floor; // 건물층수
    String living_floor; //해당층 
    String direction; //방향 
    
//    `option`            JSON             NULL        COMMENT '''option'': [ 	{''name'': ''에어컨''}, 	{''name'': ''냉장고''}, 	{''name'': ''세탁기''}, 	{''name'': ''가스레인지''}, 	{''name'': ''인덕션''}, 	{''name'': ''전자레인지''}, 	{''name'': ''세탁기''}, 	{''name'': ''책상''}, 	{''name'': ''침대''}, 	{''name'': ''옷장''}, 	{''name'': ''신발장''}, 	{''name'': ''싱크대''} }', 
   
    String loan; //전세대출
    String pet; //반려동물 
    String parking; //주차 
    String elevator; //엘리베이터
    String m_date; //입주가능일
    String subject; // 글제목
    String content; //상세설명
    String phone_number; //판매자 연락처 
    String seller_id; //판매자 ID 
    char is_selling; //판매중 여부(Y,N)


}
