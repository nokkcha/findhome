package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.RoomBean;

public interface RoomDAO {

	List<RoomBean> getRoomList(PageBean pb);
	public Integer getBoardCount();

}
