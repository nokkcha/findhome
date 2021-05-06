package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberBean;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController {
	// 스프링 DI(의존관계주입): 스프링 객체생성 방식
	// MemberService memberService=new MemberServiceImpl(); 객체생성
	// xml에서 MemberServiceImpl 객체생성 set메서드 호출해서 
	// 부모인터페이스 멤버변수에 객체생성한 값을 전달 MemberService memberService
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	public String insert() {
		//  /WEB-INF/views/member/insertForm.jsp
		return "member/insertForm";
	}
	
	@RequestMapping(value = "/member/insertPro", method = RequestMethod.POST)
	public String insertPro(MemberBean mb) {
		// MemberService memberService=new MemberServiceImpl(); 객체생성
		// memberService.insertMember(mb); 메서드 호출 
		memberService.insertMember(mb);
		
		return "redirect:/member/login";
	}
	
	@RequestMapping(value = "/login",method = RequestMethod.GET )
	public String login() {
		return "login";
	}
	
	// /member/loginPro
	@RequestMapping(value ="/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberBean mb, HttpSession session, Model model) {
		System.out.println(mb.getPass());
		System.out.println(mb.getId());
		
		
		MemberBean mb2=memberService.userCheck(mb);
		if(mb2!=null) {
			//세션값 생성 "id"
			session.setAttribute("id", mb.getId());
			System.out.println(session.getAttribute("id"));
			return "redirect:/";
		}else {
			// 입력하신 정보가 틀립니다. 
			model.addAttribute("msg","입력하신 정보가 틀립니다.");
		//  /WEB-INF/views/msg.jsp
			return "msg";
		}
		
		
	}
	
	@RequestMapping(value = "/member/main", method = RequestMethod.GET)
	public String main() {
		//  /WEB-INF/views/member/main.jsp
		return "member/main";
	}
	
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/member/login";
	}
	
	@RequestMapping(value = "/member/info", method = RequestMethod.GET)
	public String info(HttpSession session, Model model) {
		// String id = 세션값 가져오기
		String id=(String)session.getAttribute("id");
		// MemberBean mb = 세션에 해당하는 정보 조회 getMember(id)   MemberBean 리턴
		MemberBean mb=memberService.getMember(id);
		// model "mb",mb
		model.addAttribute("mb",mb);
		
		//  /WEB-INF/views/member/info.jsp
		return "member/info";
	}
	
	@RequestMapping(value = "/member/update", method = RequestMethod.GET)
	public String update(HttpSession session, Model model) {
		// String id = 세션값 가져오기
		String id=(String)session.getAttribute("id");
		// MemberBean mb = 세션에 해당하는 정보 조회 getMember(id)   MemberBean 리턴
		MemberBean mb=memberService.getMember(id);
		// model "mb",mb
		model.addAttribute("mb",mb);
		
		//  /WEB-INF/views/member/updateForm.jsp
		return "member/updateForm";
	}
	
	@RequestMapping(value = "/member/updatePro", method = RequestMethod.POST)
	public String updatePro(MemberBean mb,  Model model) {
		
		MemberBean mb2=memberService.userCheck(mb);
		if(mb2!=null) {
			// 수정
			memberService.updateMember(mb);
			return "redirect:/member/main";
		}else {
			// 입력하신 정보가 틀립니다. 
			model.addAttribute("msg","입력하신 정보가 틀립니다.");
		//  /WEB-INF/views/msg.jsp
			return "msg";
		}
	}
	
	@RequestMapping(value = "/member/delete", method = RequestMethod.GET)
	public String delete() {
		//  /WEB-INF/views/member/deleteForm.jsp
		return "member/deleteForm";
	}
	
	@RequestMapping(value = "/member/deletePro", method = RequestMethod.POST)
	public String deletePro(MemberBean mb,  Model model) {
		
		MemberBean mb2=memberService.userCheck(mb);
		if(mb2!=null) {
			// 삭제
			memberService.deleteMember(mb);
			return "redirect:/member/main";
		}else {
			// 입력하신 정보가 틀립니다. 
			model.addAttribute("msg","입력하신 정보가 틀립니다.");
		//  /WEB-INF/views/msg.jsp
			return "msg";
		}
	}
	
	@RequestMapping(value = "/member/list", method = RequestMethod.GET)
	public String list( Model model) {
		// List<MemberBean> mbList = 회원전체 정보 조회 getMemberList()   List<MemberBean> 리턴
		List<MemberBean> mbList=memberService.getMemberList();
		// model "mbList",mbList
		model.addAttribute("mbList",mbList);
		
		//  /WEB-INF/views/member/list.jsp
		return "member/list";
	}
	
}


