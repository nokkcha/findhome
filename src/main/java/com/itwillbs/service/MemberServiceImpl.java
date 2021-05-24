package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberBean;

@Service
public class MemberServiceImpl implements MemberService{

	//xml에서 MemberDAOImpl객체생성=> MemberDAO 부모인터페이스 멤버변수에 전달 
	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberBean mb) {
		// 처리작업
		//mb.setDate(new Timestamp(System.currentTimeMillis()));
		//메서드 호출
		memberDAO.insertMember(mb);
	}

	@Override
	public MemberBean userCheck(MemberBean mb) {
		return memberDAO.userCheck(mb);
	}
	@Override
	public MemberBean userCheck2(MemberBean mb) {
		
		return memberDAO.userCheck2(mb);
	}
	@Override
	public MemberBean getMember(String id) {
		return memberDAO.getMember(id);
	}

	@Override
	public void updateMember2(MemberBean mb) {
		memberDAO.updateMember2(mb);
	}

	@Override
	public void deleteMember(MemberBean mb) {
		memberDAO.deleteMember(mb);
	}
	
	@Override
	public void deleteMember2(MemberBean mb) {
		memberDAO.deleteMember2(mb);
	}

	@Override
	public List<MemberBean> getMemberList() {
		return memberDAO.getMemberList();
	}

	@Override
	public MemberBean getWish(MemberBean mb) {
		return memberDAO.getWish(mb);
	}

	@Override
	public void insertWish(MemberBean bb) {
		memberDAO.insertWish(bb);
	}

	@Override
	public void deleteWish(MemberBean bb) {
		memberDAO.deleteWish(bb);
	}

	@Override
	public List<MemberBean> getMemberWishList(String id) {
		return memberDAO.getMemberWishList(id);
	}

	@Override
	public MemberBean getMember2(String id) {
		return memberDAO.getMember2(id);
	}


	@Override
	public void insertMember2(MemberBean mb) {
		
		memberDAO.insertMember2(mb);
	}

	@Override
	public void updateMember(MemberBean mb) {
		memberDAO.updateMember(mb);
		
	}

	@Override
	public List<MemberBean> getMemberNList() {
		// TODO Auto-generated method stub
		return memberDAO.getMemberNList();
	}

	@Override
	public void yUpdate(MemberBean mb) {
		 memberDAO.yUpdate(mb);
		
	}

	@Override
	public void updateMemberPw(MemberBean mb) {
		memberDAO.updateMemberPw(mb);
		
	}

	@Override
	public MemberBean userCheck3(MemberBean mb) {
	
		return memberDAO.userCheck3(mb);
	}	
	
	@Override
	public MemberBean userCheck4(MemberBean mb) {
	
		return memberDAO.userCheck4(mb);
	}	
	
	@Override
	public MemberBean userCheck5(MemberBean mb) {
	
		return memberDAO.userCheck5(mb);
	}
	
	@Override
	public void updateMemberPw2(MemberBean mb) {
		memberDAO.updateMemberPw2(mb);
		
	}

}