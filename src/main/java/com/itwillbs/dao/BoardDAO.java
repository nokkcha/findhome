package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.PageBean;

public interface BoardDAO {
	    // 추상메서드
		public void insertBoard(BoardBean bb);
		public Integer getMaxNum();
		
		public List<BoardBean> getBoardList(PageBean pb);
		public Integer getBoardCount();
		public BoardBean getBoard(int num);
		public BoardBean numCheck(BoardBean bb);
		public void updateBoard(BoardBean bb);
		public void deleteBoard(BoardBean bb);
}
