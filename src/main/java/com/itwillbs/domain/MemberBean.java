package com.itwillbs.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberBean {
	
	private String id;
	private String password;
	private String phone_number;
	private String is_confirm = "N";
	private String member_type;
	
	private int no;
	private int wish;
}
