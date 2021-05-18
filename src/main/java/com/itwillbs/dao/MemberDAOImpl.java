package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberBean;

@Repository
public class MemberDAOImpl implements MemberDAO{

	//xml에서 마이바티스 객체생성 생성자를 통해서 자동주입
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.MemberMapper";
	
	@Override
	public void insertMember(MemberBean mb) {
		System.out.println("MemberDAOImpl insertMember()");
		// insert() update() delete() selectOne() selectList()
		sqlSession.insert(namespace+".insertMember",mb);
	}

	@Override
	public MemberBean userCheck(MemberBean mb) {
		return sqlSession.selectOne(namespace+".userCheck", mb);
	}
	
	@Override
	public MemberBean userCheck2(MemberBean mb) {
		return sqlSession.selectOne(namespace+".userCheck2", mb);
	}

	@Override
	public MemberBean getMember(String id) {
		return sqlSession.selectOne(namespace+".getMember", id);
	}

	@Override
	public void updateMember2(MemberBean mb) {
		sqlSession.update(namespace+".updateMember2", mb);
	}

	@Override
	public void deleteMember(MemberBean mb) {
		sqlSession.delete(namespace+".deleteMember", mb);
	}

	@Override
	public List<MemberBean> getMemberList() {
		return sqlSession.selectList(namespace+".getMemberList");
	}

	@Override
	public MemberBean getWish(MemberBean mb) {
		return sqlSession.selectOne(namespace+".getWish", mb);
	}

	@Override
	public void insertWish(MemberBean mb) {
		sqlSession.insert(namespace+".insertWish", mb);
		
	}

	@Override
	public void deleteWish(MemberBean mb) {
		sqlSession.delete(namespace+".deleteWish", mb);
		
	}

	@Override
	public List<MemberBean> getMemberWishList(String id) {
		return sqlSession.selectList(namespace+".getMemberWishList", id);
	}

	@Override
	public MemberBean getMember2(String id) {
		return sqlSession.selectOne(namespace+".getMember2", id);
	}

	@Override
	public void insertMember2(MemberBean mb) {
		
		sqlSession.insert(namespace+".insertMember2",mb);
	}

	@Override
	public void updateMember(MemberBean mb) {
		sqlSession.update(namespace+".updateMember", mb);
		
	}

	@Override
	public List<MemberBean> getMemberNList() {
		return sqlSession.selectList(namespace+".getMemberNList");

	}

	@Override
	public void yUpdate(MemberBean mb) {
		sqlSession.update(namespace+".yUpdate", mb);
		
	}




}
