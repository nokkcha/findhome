package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.MemberBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.BoardServiceImpl;
import com.itwillbs.service.MemberService;

@RestController
public class AjaxController {
	
	@Inject
	private MemberService memberService;
	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "/zzim", method = RequestMethod.GET)
	public ResponseEntity<String> zzim(MemberBean mb, HttpSession session) {
		ResponseEntity<String> entity=null;
		String result="";
		
		try {
			String id=(String) session.getAttribute("id");
			mb.setId(id);
			
			 MemberBean mb2=memberService.getWish(mb);			 
			System.out.println("id : " +id);

			if(id != null) {
				if(mb2 != null) {
					memberService.deleteWish(mb);
					System.out.println("deleteWish(mb)일 때 아이디 : " + mb.getId() + ", 위시 번호:" + mb.getWish());	
					result="nozzim";
					
				} else if(mb2 == null) {
					memberService.insertWish(mb);
					System.out.println("insertWish(mb)일 때 아이디 : " + mb.getId() + ", 위시 번호:" + mb.getWish());
					result="zzim";
				}
			}else {
				result="로그인하세요";
			}
			entity=new ResponseEntity<String>(result,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	

	@RequestMapping(value = "/ajaxSearch_findRooms", method = RequestMethod.GET)
	public ResponseEntity<List<OneRoomBean>> list2(HttpSession session, OneRoomBean ob, Model model, @RequestParam(value="room_type2[]") List<String> rtype) {
		ResponseEntity<List<OneRoomBean>> entity=null;
		
		try {
			String id = (String) session.getAttribute("id");
			
			PageBean pb=new PageBean();
			
			ob.setSearch("%"+ob.getSearch()+"%");
			System.out.println("검색어 : " + ob.getSearch());
			
			for(String rArr : rtype) {
				
				System.out.println("결과 : " + rArr);
			}
			
//			System.out.println("방 구조 : " + ob.getRoom_type());
			
//			ob.setLiving_floor("%"+ob.getLiving_floor());
//			System.out.println("층수 : " + ob.getLiving_floor());
			
			System.out.println("월세 최소 : " +ob.getMonthly_rent_min());
			System.out.println("월세 최대 : " +ob.getMonthly_rent_max());
			
			System.out.println("보증금 최소 : " + ob.getDeposit_min());
			System.out.println("보증금 최대 : " + ob.getDeposit_max());
			
			
			List<OneRoomBean> roomList=boardService.getSearchList(ob);
			model.addAttribute("roomList", roomList);
			
			entity=new ResponseEntity<List<OneRoomBean>>(roomList,HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<List<OneRoomBean>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	///============================

	
//	@RequestMapping(value = "/zzimList", method = RequestMethod.GET)
//	public ResponseEntity<String> zzimList(MemberBean mb, HttpSession session, Model model) {
//		ResponseEntity<String> entity=null;
//		String result="";
//		
//		try {
//			String id=(String) session.getAttribute("id");
//			mb.setId(id);
//			
//			List<MemberBean> wishList=memberService.getWishList(id);	
//			model.addAttribute("wishList", wishList);
//			
//			entity=new ResponseEntity<String>(result,HttpStatus.OK);
//		} catch (Exception e) {
//			e.printStackTrace();
//			entity=new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
//		}
//		return entity;
//	}



}
