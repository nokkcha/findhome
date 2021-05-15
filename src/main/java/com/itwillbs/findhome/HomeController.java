package com.itwillbs.findhome;

import java.text.DateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	private BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
				
		List<LinkedHashMap<String, Object>> obList = boardService.selectOneRoomThumbImg();
		for (Map<String, Object> map:obList) {
			System.out.println(map.get("room_id") + " " 
					+ map.get("subject") + " " + map.get("file_name"));
		}
		
		model.addAttribute("obList", obList);
		
		return "index";
	}
	
		
	@RequestMapping(value = "/findRoom",method = RequestMethod.GET )
	public String findRoom() {
		return "findRoom";
	}
	
	@RequestMapping(value = "/sellRoom",method = RequestMethod.GET )
	public String sellRoom(HttpServletRequest request, Model model, HttpSession session) {
		
		try {
			String id = (String) session.getAttribute("id");
			String category = request.getParameter("category");
			
			if ( id == null || category == null) {
				//model.addAttribute("msg", "잘못된 요청입니다.");
				//return "msg";
			}
			
			OneRoomBean ob = new OneRoomBean();
			ob.setCategory(category);
			ob.setSeller_id(id);
			model.addAttribute("ob", ob);
						
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "sellRoom";
	}
	
	
}
