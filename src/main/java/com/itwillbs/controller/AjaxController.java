package com.itwillbs.controller;

import java.net.URLEncoder;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.itwillbs.domain.MemberBean;
import com.itwillbs.service.MemberService;

@RestController
public class AjaxController {
	
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/zzim", method = RequestMethod.GET)
	public ResponseEntity<String> zzim(MemberBean mb, HttpSession session) {
		ResponseEntity<String> entity=null;
		String result="";
	    
		try {
			String id=(String) session.getAttribute("id");
			mb.setId(id);
			
			 MemberBean mb2=memberService.getWish(mb);			 

			if(id != null) {
				if(mb2 != null) {
					memberService.deleteWish(mb);
					System.out.println("deleteWish(mb) - id : " + mb.getId() + ", room_id :" + mb.getWish());	
					result="nozzim";
					
				} else if(mb2 == null) {
					memberService.insertWish(mb);
					System.out.println("insertWish(mb) - id : " + mb.getId() + ", romm_id :" + mb.getWish());
					result="zzim";
				}
			}else {
				result="찜 기능을 이용하려면 먼저 로그인해주세요";				
			}
			// 한글깨짐 방지를 위해 인코딩하기
			result = URLEncoder.encode(result , "UTF-8");
			
			entity=new ResponseEntity<String>(result,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}


}
