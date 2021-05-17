package com.itwillbs.dao;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.ImageBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;

public interface BoardDAO {
	    // 추상메서드
		public void insertBoard(BoardBean bb);
		public Integer getMaxNum();
		
		public List<OneRoomBean> getBoardList(PageBean pb);
		public List<OneRoomBean> getWishList(PageBean pb);
		public Integer getBoardCount(PageBean pb);
		public Integer getWishCount(String id);
		public BoardBean getBoard(int num);
		public BoardBean numCheck(BoardBean bb);
		public void updateBoard(BoardBean bb);
		public void deleteBoard(BoardBean bb);

		public void insertRoom(OneRoomBean bb);

		public void insertRoomImages(HashMap<String, Object> map);

		public List<OneRoomBean> getSearchList(OneRoomBean ob);
		public OneRoomBean getRoom(int room_id);
		public List<ImageBean> getImage(int room_id);
		
		List<LinkedHashMap<String, Object>> selectOneRoomThumbImg();

}
