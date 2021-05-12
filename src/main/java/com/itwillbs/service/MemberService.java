package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.MemberBean;

public interface MemberService {
    // 추상메서드
	public void insertMember(MemberBean mb);
	public MemberBean getMember(String id);
	
	
}







