package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.RoomDAO;
import com.itwillbs.domain.RoomBean;

@Service
public class RoomServiceImpl implements RoomService{
	@Inject
	private RoomDAO roomDAO;

	@Override
	public List<RoomBean> getRoomList() {	
		return roomDAO.getRoomList();
	}

}
