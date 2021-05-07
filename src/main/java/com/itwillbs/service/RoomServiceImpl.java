package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.RoomDAO;
import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.RoomBean;

@Service
public class RoomServiceImpl implements RoomService{
	@Inject
	private RoomDAO roomDAO;

	@Override
	public List<RoomBean> getRoomList(PageBean pb) {	
		return roomDAO.getRoomList(pb);
	}
	
	@Override
	public Integer getBoardCount() {
		return roomDAO.getBoardCount();
	}

}
