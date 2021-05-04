package com.itwillbs.findhome;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
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
		
		return "index";
	}
		
	@RequestMapping(value = "/join",method = RequestMethod.GET )
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/join_choice",method = RequestMethod.GET )
	public String join_choice() {
		return "join_choice";
	}
	
	@RequestMapping(value = "/login",method = RequestMethod.GET )
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/detailView",method = RequestMethod.GET )
	public String detailView() {
		return "detailView";
	}
	
	@RequestMapping(value = "/findRooms",method = RequestMethod.GET )
	public String findRooms() {
		return "findRooms";
	}
	
	@RequestMapping(value = "/sellRoom",method = RequestMethod.GET )
	public String sellRoom() {
		return "sellRoom";
	}
	
	@RequestMapping(value = "/memberInfo",method = RequestMethod.GET )
	public String memberinfo() {
		return "memberInfo";
	}
	
	@RequestMapping(value = "/memberDelete",method = RequestMethod.GET )
	public String memberdelete() {
		return "memberDelete";
	}
	
}
