package com.itwillbs.controller;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.PageBean;
import com.itwillbs.domain.RoomBean;
import com.itwillbs.service.RoomService;



@Controller
public class RoomController {
	
	@Inject
	private RoomService roomService;

	@RequestMapping(value = "/findRooms", method = RequestMethod.GET)
	public String list(HttpServletRequest request, Model model) {
		
		PageBean pb = new PageBean();
		if (request.getParameter("pageNum") != null) {
			// 있으면 가져온값 5
			pb.setPageNum(request.getParameter("pageNum"));
		} else {
			// 없으면 1
			pb.setPageNum("1");
		}
		pb.setPageSize(10);

		List<RoomBean> roomList = roomService.getRoomList(pb);

		// count(*) 구하기 => set메서드 호출 => pageBlock, startPage, endPage, pageCount구하기
		pb.setCount(roomService.getBoardCount());
		

		model.addAttribute("roomList", roomList);
		model.addAttribute("pb", pb);
		
		return "findRooms";
	}
	

}
