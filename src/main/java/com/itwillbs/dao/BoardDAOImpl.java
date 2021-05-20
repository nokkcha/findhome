package com.itwillbs.dao;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.ImageBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.qnaBean;

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
	public Integer getBoardCount(PageBean pb) {
		return sqlSession.selectOne(namespace+".getBoardCount",pb);
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
	public List<ImageBean> getImage(int room_id) {
		return sqlSession.selectList(namespace+".getImage",room_id);
	}

	@Override
	public void insertRoomImages(HashMap<String, Object> bean) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insertRoomImages",bean);
	}

	@Override
	public List<LinkedHashMap<String, Object>> selectOneRoomThumbImg() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".selectOneRoomThumbImg");
	}

	@Override
	public void insertqna(qnaBean qb) {
		sqlSession.insert(namespace+".insertqna",qb);
		
	}

	public List<OneRoomBean> sellerLatestBoard(String seller_id) {
		return sqlSession.selectList(namespace+".sellerLatestBoard", seller_id);
	}

	@Override
	public List<OneRoomBean> getSalesList(PageBean pb) {
		return sqlSession.selectList(namespace+".getSalesList", pb);
	}

	@Override
	public int getSalesCount(PageBean pb) {
		return sqlSession.selectOne(namespace+".getSalesCount", pb);
	}

	@Override
	public int getSalesCategoryCount(OneRoomBean ob) {
		return sqlSession.selectOne(namespace+".getSalesCategoryCount", ob);
	}

	@Override
	public void updateSalesState(OneRoomBean ob) {
		sqlSession.update(namespace+".updateSalesState", ob);
	}

	@Override
	public void insertReport(qnaBean qb) {
		sqlSession.insert(namespace+".insertReport",qb);
		
	}


	
	


}
