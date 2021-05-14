package com.itwillbs.domain;


public class MemberBean {
	

	private String id;
	private String password;
	private String phone_number;
	private char is_confirm = 'N';
	private String member_type;
	
	public String getMember_type() {
		return member_type;
	}
	public void setMember_type(String member_type) {
		this.member_type = member_type;
	}
	private int no;
	private int wish;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public char getIs_confirm() {
		return is_confirm;
	}
	public void setIs_confirm(char is_confirm) {
		this.is_confirm = is_confirm;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getWish() {
		return wish;
	}
	public void setWish(int wish) {
		this.wish = wish;
	}


	
	
}
