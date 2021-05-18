package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.MemberBean;


public interface MemberService {
    // 추상메서드
	public void insertMember(MemberBean mb);
	
	public void insertMember2(MemberBean mb);
	
	public MemberBean getMember(String id);
	
	public MemberBean userCheck(MemberBean mb);
	
	public MemberBean userCheck2(MemberBean mb);
	
	public MemberBean getMember2(String id);
	
	public void updateMember(MemberBean mb);
	
	public void updateMember2(MemberBean mb);
	
	public void deleteMember(MemberBean mb);
	
	public List<MemberBean> getMemberList();

	public MemberBean getWish(MemberBean mb);
	
	public void insertWish(MemberBean mb);
	
	public void deleteWish(MemberBean mb);

	public List<MemberBean> getMemberWishList(String id);
	
	public  List<MemberBean> getMemberNList();
	
	public void yUpdate(MemberBean mb);
}






