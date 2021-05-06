package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.RoomBean;

@Repository
public class RoomDAOImpl implements RoomDAO{
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.itwillbs.mapper.RoomMapper";

	@Override
	public List<RoomBean> getRoomList() {
		
		return sqlSession.selectList(namespace+".getRoomList");
	}

}
