package com.itwillbs.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.qnaBean;

public interface BoardService {

	// 추상메서드
	public void insertBoard(BoardBean bb);
	// 방등록
	public void insertRoom(OneRoomBean bb);
	// 방 이미지 등록
	public void insertRoomImags(HashMap<String, Object> bean);
	
	public List<OneRoomBean> getBoardList(PageBean pb);
	public List<OneRoomBean> getWishList(PageBean pb);
	public Integer getBoardCount(PageBean pb);
	public Integer getWishCount(String id);

	public BoardBean getBoard(int num);

	public BoardBean numCheck(BoardBean bb);

	public void updateBoard(BoardBean bb);

	public void deleteBoard(BoardBean bb);

	public List<OneRoomBean> getSearchList(OneRoomBean ob);
	
	public OneRoomBean getRoom(int room_id);
	List<LinkedHashMap<String, Object>> selectOneRoomThumbImg();
	
	public void insertqna(qnaBean qb);
}
