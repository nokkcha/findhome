package com.itwillbs.dao;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.ImageBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.qnaBean;

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
		
		public void insertqna(qnaBean qb);
		public void insertReport(qnaBean qb);

		public List<OneRoomBean> sellerLatestBoard(String seller_id);
		public List<OneRoomBean> getSalesList(PageBean pb);
		public int getSalesCount(PageBean pb);
		public int getSalesCategoryCount(OneRoomBean ob);
		public void updateSalesState(OneRoomBean ob);
		public List<qnaBean> qnaLatestBoard(String seller_id);
		public List<qnaBean> getQnaBoard(PageBean pb);
		public int getQnaBoardCount(PageBean pb);
		public void deleteBoard(OneRoomBean ob);
		public OneRoomBean boardCheck(OneRoomBean ob);
		public void updateRoom(OneRoomBean ob);
		public void deleteRoomImage(int room_id);

}
