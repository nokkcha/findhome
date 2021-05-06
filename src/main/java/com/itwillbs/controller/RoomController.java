package com.itwillbs.controller;
import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.RoomBean;
import com.itwillbs.service.RoomService;



@Controller
public class RoomController {
	
	@Inject
	private RoomService roomService;

	@RequestMapping(value = "/findRooms", method = RequestMethod.GET)
	public String list(Model model) {
		
		List<RoomBean> roomList = roomService.getRoomList();
		model.addAttribute("roomList", roomList);
		
		return "findRooms";
	}
	

}
