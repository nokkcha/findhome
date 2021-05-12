package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.MemberBean;
import com.itwillbs.domain.Member_normalBean;

public interface MemberService {
    // 추상메서드
	public void insertMember(MemberBean mb);
	
	public void insertMember2(Member_normalBean mnb);
	
	public MemberBean getMember(String id);
	
	public MemberBean userCheck(MemberBean mb);
	
	public Member_normalBean getMember2(String id);
	
	public void updateMember(MemberBean mb);
	
	public void deleteMember(MemberBean mb);
	
	public List<MemberBean> getMemberList();

	public MemberBean getWish(MemberBean mb);
	
	public void insertWish(MemberBean mb);
	
	public void deleteWish(MemberBean mb);

	public List<MemberBean> getWishList(String id);
}






