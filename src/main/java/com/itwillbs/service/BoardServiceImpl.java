package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.BoardDAO;
import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO boardDAO;
	
	@Override
	public void insertBoard(BoardBean bb) {
		// name, pass, subject, content
		// num, readcount, date
		// num <= max(num)+1
		if(boardDAO.getMaxNum()!=null) {
			bb.setNum(boardDAO.getMaxNum()+1);
		}else {
			bb.setNum(1);
		}
		
		bb.setReadcount(0);
		bb.setDate(new Timestamp(System.currentTimeMillis()));
		
		boardDAO.insertBoard(bb);
	}

	@Override
	public List<BoardBean> getBoardList(PageBean pb) {
		// #{startRow} 계산
		pb.setCurrentPage(Integer.parseInt(pb.getPageNum()));
		// int startRow=(currentPage-1)*pageSize+1;
		// 디비 startRow-1
		pb.setStartRow((pb.getCurrentPage()-1)*pb.getPageSize());
		
		return boardDAO.getBoardList(pb);
	}

	@Override
	public Integer getBoardCount() {
		return boardDAO.getBoardCount();
	}

	@Override
	public BoardBean getBoard(int num) {
		// TODO Auto-generated method stub
		return boardDAO.getBoard(num);
	}

	@Override
	public BoardBean numCheck(BoardBean bb) {
		// TODO Auto-generated method stub
		return boardDAO.numCheck(bb);
	}

	@Override
	public void updateBoard(BoardBean bb) {
		// TODO Auto-generated method stub
		boardDAO.updateBoard(bb);
	}

	@Override
	public void deleteBoard(BoardBean bb) {
		// TODO Auto-generated method stub
		boardDAO.deleteBoard(bb);
	}

	@Override
	public OneRoomBean getRoom(int room_id) {
		return boardDAO.getRoom(room_id);
	}
	
	
	

}
