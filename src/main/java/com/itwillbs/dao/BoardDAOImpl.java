package com.itwillbs.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;

@Repository
public class BoardDAOImpl implements BoardDAO{

	//마이바티스 객체생성
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.BoardMapper";
	
	@Override
	public void insertBoard(BoardBean bb) {
		sqlSession.insert(namespace+".insertBoard",bb);
	}

	@Override
	public Integer getMaxNum() {
		return sqlSession.selectOne(namespace+".getMaxNum");
	}

	@Override
	public List<OneRoomBean> getBoardList(PageBean pb) {
		return sqlSession.selectList(namespace+".getBoardList", pb);
	}
	@Override
	public List<OneRoomBean> getWishList(PageBean pb) {
		return sqlSession.selectList(namespace+".getWishList", pb);
	}
	
	@Override
	public List<OneRoomBean> getSearchList(OneRoomBean ob) {
		return sqlSession.selectList(namespace+".getSearchList", ob);
	}
	

	@Override
	public Integer getBoardCount() {
		return sqlSession.selectOne(namespace+".getBoardCount");
	}
	
	@Override
	public Integer getWishCount(String id) {
		return sqlSession.selectOne(namespace+".getWishCount", id);
	}

	@Override
	public BoardBean getBoard(int num) {
		return sqlSession.selectOne(namespace+".getBoard", num);
	}

	@Override
	public BoardBean numCheck(BoardBean bb) {
		return sqlSession.selectOne(namespace+".numCheck", bb);
	}

	@Override
	public void updateBoard(BoardBean bb) {
		sqlSession.insert(namespace+".updateBoard",bb);		
	}

	@Override
	public void deleteBoard(BoardBean bb) {
		sqlSession.delete(namespace+".deleteBoard",bb);
	}

	@Override
	public void insertRoom(OneRoomBean bb) {
		sqlSession.insert(namespace+".insertRoom",bb);
	}
	

	
	@Override
	public OneRoomBean getRoom(int room_id) {
		return sqlSession.selectOne(namespace+".getRoom", room_id);
	}

	@Override
	public void insertRoomImages(HashMap<String, Object> bean) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insertRoomImages",bean);
	}

}
