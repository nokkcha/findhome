package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.MemberBean;


public interface MemberDAO {

		public void insertMember(MemberBean mb);
		
		public void insertMember2(MemberBean mb);
		
		public MemberBean getMember(String id);
		
		public MemberBean userCheck(MemberBean mb);
		
		public MemberBean userCheck2(MemberBean mb);
		
		public MemberBean userCheck3(MemberBean mb);
		
		public MemberBean userCheck4(MemberBean mb);
		
		public MemberBean getMember2(String id);

		public void updateMember(MemberBean mb);
		
		public void updateMember2(MemberBean mb);
		
		public void updateMember3(MemberBean mb);
		
		public void deleteMember(MemberBean mb);
		
		public void deleteMember2(MemberBean mb);
		
		public List<MemberBean> getMemberList();

		public MemberBean getWish(MemberBean mb);
		
		public void insertWish(MemberBean bb);
		
		public void deleteWish(MemberBean bb);

		public List<MemberBean> getMemberWishList(String id);
		
		public  List<MemberBean> getMemberNList();
		
		public void yUpdate(MemberBean mb);
		
		public void updateMemberPw(MemberBean mb);
		
		public void updateMemberPw2(MemberBean mb);
		


}