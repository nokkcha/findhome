package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.RoomBean;

public interface RoomService {

	List<RoomBean> getRoomList(PageBean pb);
	public Integer getBoardCount();
}
