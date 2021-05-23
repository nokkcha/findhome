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
import com.itwillbs.domain.MemberBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.ReportBean;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	private BoardService boardService;
	@Inject
	private MemberService<ReportBean> memberService;
	

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		String category = "OneRoom";
		// 원룸 최신매물 리스트와 썸네일 정보 넘기기
		List<LinkedHashMap<String, Object>> obList = boardService.selectThumbImage(category);
		System.out.println("=====원룸 최신매물 정보리스트=====");
		for (Map<String, Object> map : obList) {			
			System.out.println(map.get("room_id") + " " + map.get("subject") + " " + map.get("file_name"));
		}
		
		// 오피스텔 최신매물 리스트와 썸네일 정보 넘기기
		category = "Officetel";
		List<LinkedHashMap<String, Object>> ofList = boardService.selectThumbImage(category);
		System.out.println("=====오피스텔 최신매물 정보리스트=====");
		for (Map<String, Object> map : obList) {			
			System.out.println(map.get("room_id") + " " + map.get("subject") + " " + map.get("file_name"));
		}

		// 찜 리스트 넘기기
		String id = (String) session.getAttribute("id");

		if (id != null) {
			List<MemberBean> wishList = memberService.getMemberWishList(id);
			model.addAttribute("wishList", wishList);
		}
		
		

		// 원룸 인기 매물 리스트와 썸네일 정보 넘기기	
		category = "OneRoom";
		List<LinkedHashMap<String, Object>> popOneRoomList = boardService.selectPopularRooms(category);
		System.out.println("=====원룸 인기 매물 리스트=====");
		for (Map<String, Object> map : popOneRoomList) {
			System.out.println(map.get("room_id") + " " + map.get("subject") + " 찜한 개수 : " + map.get("wish_count"));
		}
		// 오피스텔 인기 매물 리스트와 썸네일 정보 넘기기
		category = "Officetel";
		List<LinkedHashMap<String, Object>> popOfficetelList = boardService.selectPopularRooms(category);
		for (Map<String, Object> map : popOfficetelList) {
			System.out.println(map.get("room_id") + " " + map.get("subject") + " 찜한 개수 : " + map.get("wish_count"));
		}

		model.addAttribute("popOneRoomList", popOneRoomList);		// 원룸 인기매물 리스트
		model.addAttribute("popOfficetelList", popOfficetelList);	// 오피스텔 인기매물 리스트
		model.addAttribute("obList", obList);						// 원룸 최신 매물 리스트
		model.addAttribute("ofList", ofList);						// 오피스텔 최신 매물 리스트

		return "index";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model) {

		List<MemberBean> nList=memberService.getMemberNList();
		List<ReportBean> reportList=memberService.getReportList();
		
		model.addAttribute("nList",nList);
		model.addAttribute("reportList",reportList);
		
		

		model.addAttribute("nList", nList);

		return "admin";
	}

	@RequestMapping(value = "/yUpdate", method = RequestMethod.GET)
	public String yUpdate(MemberBean mb) {

		memberService.yUpdate(mb);	


		return "redirect:/admin";
	}

	@RequestMapping(value = "/findRoom", method = RequestMethod.GET)
	public String findRoom() {
		return "findRoom";
	}

	@RequestMapping(value = "/sellRoom", method = RequestMethod.GET)
	public String sellRoom(HttpServletRequest request, Model model, HttpSession session) {

		try {
			String id = (String) session.getAttribute("id");
			String category = request.getParameter("category");

			if (id == null || category == null) {
				// model.addAttribute("msg", "잘못된 요청입니다.");
				// return "msg";
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
