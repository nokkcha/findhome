package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberBean;

@Service
public class MemberServiceImpl implements MemberService{

	
	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberBean mb) {
		memberDAO.insertMember(mb);
		
	}

	@Override
	public MemberBean getMember(String id) {
		// TODO Auto-generated method stub
		return memberDAO.getMember(id);
	}

	

}
