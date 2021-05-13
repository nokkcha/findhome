package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.BoardDAO;
import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.ImageBean;

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
	public List<OneRoomBean> getBoardList(PageBean pb) {
		// #{startRow} 계산
		pb.setCurrentPage(Integer.parseInt(pb.getPageNum()));
		// int startRow=(currentPage-1)*pageSize+1;
		// 디비 startRow-1
		pb.setStartRow((pb.getCurrentPage()-1)*pb.getPageSize());
		
		return boardDAO.getBoardList(pb);
	}
	
	@Override
	public List<OneRoomBean> getWishList(PageBean pb) {
		// #{startRow} 계산
		pb.setCurrentPage(Integer.parseInt(pb.getPageNum()));
		// int startRow=(currentPage-1)*pageSize+1;
		// 디비 startRow-1
		pb.setStartRow((pb.getCurrentPage()-1)*pb.getPageSize());
		
		return boardDAO.getWishList(pb);
	}

	
	@Override
	public List<OneRoomBean> getSearchList(OneRoomBean ob) {
		return boardDAO.getSearchList(ob);
	}	
	
	
	
	@Override
	public Integer getBoardCount(PageBean pb) {
		return boardDAO.getBoardCount(pb);
	}
	
	@Override
	public Integer getWishCount(String id) {
		return boardDAO.getWishCount(id);
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
	public void insertRoom(OneRoomBean bb) {
		// TODO Auto-generated method stub
		boardDAO.insertRoom(bb);
		
		System.out.println("등록한 방의 ID : " + bb.getRoom_id());
		
		ImageBean imageBean = new ImageBean();
		String[] fileList = bb.getFileList();
		
		if (fileList.length > 0) {
			if (fileList[0] == "") {
				return;
			}
		}
		
		List<ImageBean> list = new ArrayList<ImageBean>();
		
		for (String string : fileList) {
			if (string == "") {
				continue;
			}
			
			imageBean.setRoom_id(bb.getRoom_id());
			imageBean.setFile_name(string);

			list.add(imageBean);
		}				
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		insertRoomImags(map);
	}

	@Override
	public void insertRoomImags(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		boardDAO.insertRoomImages(map);
	}

	public OneRoomBean getRoom(int room_id) {
		return boardDAO.getRoom(room_id);
	}
	


}
