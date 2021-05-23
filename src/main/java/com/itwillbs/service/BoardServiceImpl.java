package com.itwillbs.service;

import java.sql.Timestamp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.BoardDAO;
import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.qnaBean;
import com.itwillbs.domain.ImageBean;

import lombok.Getter;
import lombok.Setter;

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
		
		ob.setSearch("%" + ob.getSearch() + "%");
		System.out.println("검색어 : " + ob.getSearch());

		if (ob.getRoom_type() == null) {
			ob.setRoom_type("^");
		} else if (ob.getRoom_type().contains(",")) {
			ob.setRoom_type(ob.getRoom_type().replaceAll(",", "|"));
		}
		System.out.println("방구조 : " + ob.getRoom_type());

		if (ob.getLiving_floor() == null) {
			ob.setLiving_floor("^");
		} else if (ob.getLiving_floor().contains(",")) {
			ob.setLiving_floor(ob.getLiving_floor().replaceAll(",", "|"));
		}

		System.out.println("층수 : " + ob.getLiving_floor());

		System.out.println("월세 최소 : " + ob.getMonthly_rent_min());
		System.out.println("월세 최대 : " + ob.getMonthly_rent_max());

		System.out.println("보증금 최소 : " + ob.getDeposit_min());
		System.out.println("보증금 최대 : " + ob.getDeposit_max());
		System.out.println("카테고리 : " + ob.getCategory());
		
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
			ImageBean imageBean = new ImageBean();
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

	
	
	@Override
	public List<ImageBean> getImage(int room_id) {
		return boardDAO.getImage(room_id);
	}

	@Override
	public List<LinkedHashMap<String, Object>> selectOneRoomThumbImg() {
		// TODO Auto-generated method stub
		return boardDAO.selectOneRoomThumbImg();
	}

	@Override
	public void insertqna(qnaBean qb) {
		boardDAO.insertqna(qb);
		
	}
	
	@Override
	public List<OneRoomBean> sellerLatestBoard(String seller_id) {
		return boardDAO.sellerLatestBoard(seller_id);
	}

	@Override
	public List<OneRoomBean> getSalesList(PageBean pb) {
		// #{startRow} 계산
		pb.setCurrentPage(Integer.parseInt(pb.getPageNum()));
		// int startRow=(currentPage-1)*pageSize+1;
		// 디비 startRow-1
		pb.setStartRow((pb.getCurrentPage()-1)*pb.getPageSize());
		return boardDAO.getSalesList(pb);
	}

	@Override
	public int getSalesCount(PageBean pb) {
		return boardDAO.getSalesCount(pb);
	}

	@Override
	public int getSalesCategoryCount(OneRoomBean ob) {
		return boardDAO.getSalesCategoryCount(ob);
	}

	@Override
	public void updateSalesState(OneRoomBean ob) {
		boardDAO.updateSalesState(ob);
		
	}

	@Override
	public List<qnaBean> qnaLatestBoard(String seller_id) {
		return boardDAO.qnaLatestBoard(seller_id);
	}
	
	@Override
	public void insertReport(qnaBean qb) {
		boardDAO.insertReport(qb);
		
	}

	@Override
	public List<qnaBean> getQnaBoard(PageBean pb) {
		// #{startRow} 계산
		pb.setCurrentPage(Integer.parseInt(pb.getPageNum()));
		// int startRow=(currentPage-1)*pageSize+1;
		// 디비 startRow-1
		pb.setStartRow((pb.getCurrentPage()-1)*pb.getPageSize());
		
		return boardDAO.getQnaBoard(pb);
	}

	@Override
	public int getQnaBoardCount(PageBean pb) {
		return boardDAO.getQnaBoardCount(pb);
	}

	@Override
	public void deleteBoard(OneRoomBean ob) {
		boardDAO.deleteBoard(ob);
		
	}

	@Override
	public OneRoomBean boardCheck(OneRoomBean ob) {
		return boardDAO.boardCheck(ob);
	}

	@Override
	public void updateRoom(OneRoomBean ob) {
		
		System.out.println("넘어온 관리비포함 : " +ob.getInclude_fees());
		System.out.println("넘어온 옵션 :" + ob.getInclude_options());

		String[] fileList = ob.getFileList();
		
//		if (fileList.length > 0) {
//			if (fileList[0] == "") {
//				return;
//			}
//		}
		
		List<ImageBean> list = new ArrayList<ImageBean>();
		
		for (String string : fileList) {
			if (string == "") {
				continue;
			}
			ImageBean imageBean = new ImageBean();
			imageBean.setRoom_id(ob.getRoom_id());
			imageBean.setFile_name(string);

			list.add(imageBean);
		}				
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		deleteRoomImage(ob.getRoom_id());
		insertRoomImags(map);
		
		boardDAO.updateRoom(ob);
	}

	@Override
	public void deleteRoomImage(int room_id) {
		// TODO Auto-generated method stub
		boardDAO.deleteRoomImage(room_id);
	}

	@Override
	public List<LinkedHashMap<String, Object>> selectPopularRooms(String category) {
		// TODO Auto-generated method stub		
		return boardDAO.selectPopularRooms(category);
	}

	@Override
	public List<LinkedHashMap<String, Object>> selectThumbImage(String category) {
		// TODO Auto-generated method stub
		return boardDAO.selectThumbImage(category);
	}

}
