package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

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
		mb.setDate(new Timestamp(System.currentTimeMillis()));
		//메서드 호출
		memberDAO.insertMember(mb);
	}

	@Override
	public MemberBean userCheck(MemberBean mb) {
		return memberDAO.userCheck(mb);
	}

	@Override
	public MemberBean getMember(String id) {
		return memberDAO.getMember(id);
	}

	@Override
	public void updateMember(MemberBean mb) {
		memberDAO.updateMember(mb);
	}

	@Override
	public void deleteMember(MemberBean mb) {
		memberDAO.deleteMember(mb);
	}

	@Override
	public List<MemberBean> getMemberList() {
		return memberDAO.getMemberList();
	}

}
