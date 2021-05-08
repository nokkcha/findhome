package com.itwillbs.domain;

import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class OneRoomBean {
	private int room_id; // 매물 ID
	private String address; // 주소
	private int deposit; // 보증금
	private int monthly_rent; // 월세
	private String room_type; // "오픈형 원룸 (방1)" COMMENT "방구조",
	private int fees; // DEFAULT 0 COMMENT "관리비",
	private Map<String, Object> include_fees; // "fees": [ {"name": "전기세"}, (...), {"name": "TV"}, ]
	private float exclusive_area_m; // DEFAULT 3.31 COMMENT "전용면적 (제곱미터)",
	private float exclusive_area_p; // DEFAULT 1.00 COMMENT "전용면적 (평)",
	private float contract_area_m; // DEFAULT 3.31 COMMENT "계약면적 (제곱미터)",
	private float contract_area_p; // DEFAULT 1.00 COMMENT "계약면적 (평)",
	private String floor; // DEFAULT "1층" COMMENT "건물층수",
	private String living_floor; // DEFAULT "반지하" COMMENT "반지하,옥탑방,1~80",
	private String direction; // DEFAULT "동향" COMMENT "동,서,남,북,남동,남서,북동,북서,확인필요",
	private Map<String, Object> option; // COMMENT ""option"": [ {""name"": ""에어컨""}, {""name"": ""냉장고""}, {""name"":
										// ""세탁기""}, {""name"": ""가스레인지""}, {""name"": ""인덕션""}, {""name"": ""전자레인지""},
										// {""name"": ""세탁기""}, {""name"": ""책상""}, {""name"": ""침대""}, {""name"":
										// ""옷장""}, {""name"": ""신발장""}, {""name"": ""싱크대""} }",
	private String loan; // DEFAULT "불가능" COMMENT "가능 불가능 확인필요",
	private String pet = "불가능"; // COMMENT "가능 불가능 고양이만 확인필요",
	private String parking;// DEFAULT "없음" COMMENT "가능 없음 엘리베이터 있음 없음",
	private String elevator; // DEFAULT "없음" COMMENT "엘리베이터",
	private String m_date; // DEFAULT "즉시 입주" COMMENT "입주가능일",
	private String subject; // "글제목",
	private String content; // "상세설명",
	private String phone_number; // "판매자 연락처",
	private String seller_id; // "판매자 ID",
	private char is_selling = 'Y'; // "판매중 여부(Y,N)

	public int getRoom_id() {
		return room_id;
	}

	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getDeposit() {
		return deposit;
	}

	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}

	public int getMonthly_rent() {
		return monthly_rent;
	}

	public void setMonthly_rent(int monthly_rent) {
		this.monthly_rent = monthly_rent;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public int getFees() {
		return fees;
	}

	public void setFees(int fees) {
		this.fees = fees;
	}

	public Map<String, Object> getInclude_fees() {
		return include_fees;
	}

	public void setInclude_fees(Map<String, Object> include_fees) {
		this.include_fees = include_fees;
	}

	public float getExclusive_area_m() {
		return exclusive_area_m;
	}

	public void setExclusive_area_m(float exclusive_area_m) {
		this.exclusive_area_m = exclusive_area_m;
	}

	public float getExclusive_area_p() {
		return exclusive_area_p;
	}

	public void setExclusive_area_p(float exclusive_area_p) {
		this.exclusive_area_p = exclusive_area_p;
	}

	public float getContract_area_m() {
		return contract_area_m;
	}

	public void setContract_area_m(float contract_area_m) {
		this.contract_area_m = contract_area_m;
	}

	public float getContract_area_p() {
		return contract_area_p;
	}

	public void setContract_area_p(float contract_area_p) {
		this.contract_area_p = contract_area_p;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getLiving_floor() {
		return living_floor;
	}

	public void setLiving_floor(String living_floor) {
		this.living_floor = living_floor;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public Map<String, Object> getOption() {
		return option;
	}

	public void setOption(Map<String, Object> option) {
		this.option = option;
	}

	public String getLoan() {
		return loan;
	}

	public void setLoan(String loan) {
		this.loan = loan;
	}

	public String getPet() {
		return pet;
	}

	public void setPet(String pet) {
		this.pet = pet;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public String getElevator() {
		return elevator;
	}

	public void setElevator(String elevator) {
		this.elevator = elevator;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public char getIs_selling() {
		return is_selling;
	}

	public void setIs_selling(char is_selling) {
		this.is_selling = is_selling;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}
