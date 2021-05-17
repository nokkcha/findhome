package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

	@RequestMapping(value = "/join_choice", method = RequestMethod.GET)
	public String join_choice() {
		return "join_choice";
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "join";
	}

	@RequestMapping(value = "/join2", method = RequestMethod.GET)
	public String join2() {
		return "join2";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	// /member/loginPro
	@RequestMapping(value = "/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberBean mb, HttpSession session, Model model) {


		MemberBean mb2 = memberService.userCheck(mb);
		if (mb2 != null) {
			// 세션값 생성 "id"
			session.setAttribute("id", mb.getId());

			session.setAttribute("member_type", "normal");
			return "redirect:/";
		} else {
			// 입력하신 정보가 틀립니다.
			model.addAttribute("msg", "입력하신 정보가 틀립니다.");
			// /WEB-INF/views/member/msg.jsp
			return "msg";
		}

	}

	@RequestMapping(value = "/loginPro2", method = RequestMethod.POST)
	public String loginPro2(MemberBean mb, HttpSession session, Model model) {

		MemberBean mb2 = memberService.userCheck2(mb);
		if (mb2 != null) {
			// 세션값 생성 "id"
			session.setAttribute("id", mb.getId());

			// 회원구분 세션값 생성 "member_type"
			session.setAttribute("member_type", "seller");

			return "redirect:/";
		} else {
			// 입력하신 정보가 틀립니다.
			model.addAttribute("msg", "입력하신 정보가 틀립니다.");
			// /WEB-INF/views/member/msg.jsp
			return "msg";
		}

	}

	@RequestMapping(value = "/joinPro", method = RequestMethod.POST)
	public String joinPro(MemberBean mb) {

		memberService.insertMember(mb);

		return "redirect:/";
	}

	@RequestMapping(value = "/joinPro2", method = RequestMethod.POST)
	public String joinPro2(MemberBean mb) {

		memberService.insertMember2(mb);

		return "redirect:/";
	}

	@RequestMapping(value = "/member/main", method = RequestMethod.GET)
	public String main() {
		// /WEB-INF/views/member/main.jsp
		return "member/main";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {

		session.invalidate();

		return "redirect:/login";
	}

	@RequestMapping(value = "/memberDelete", method = RequestMethod.GET)
	public String delete(HttpSession session, Model model) {
		
				// String id = 세션값 가져오기
				String id = (String) session.getAttribute("id");
				// 1.세션값 변수에 저장
				String member_type = (String) session.getAttribute("member_type");

				// MemberBean mb = 세션에 해당하는 정보 조회 getMember(id) MemberBean 리턴
				MemberBean mb;
				if (member_type == "normal") {
					 mb = memberService.getMember(id);
				}else {
					mb = memberService.getMember2(id);
				}
				// 2.멤버빈에 저장
				mb.setMember_type(member_type);

				// model "mb",mb
				model.addAttribute("mb", mb);
		
		// /WEB-INF/views/member/deleteForm.jsp
		return "memberDelete";
	}
	
	@RequestMapping(value = "/memberDeletePro1", method = RequestMethod.POST)
	public String deletePro(MemberBean mb, HttpSession session, Model model) {
		
		session.setAttribute("id", mb.getId());
	
		MemberBean mb2=memberService.userCheck(mb);
			
		if(mb2!=null) {		
			// 삭제
			memberService.deleteMember(mb);
			session.invalidate();
			return "redirect:/";
			
		}else {
			// 입력하신 정보가 틀립니다. 
			model.addAttribute("msg","입력하신 정보가 틀립니다.");
		//  /WEB-INF/views/member/msg.jsp
			return "member/msg";
		}
	}
	
	@RequestMapping(value = "/memberDeletePro2", method = RequestMethod.POST)
	public String deletePro2(MemberBean mb, HttpSession session, Model model) {
		
		session.setAttribute("id", mb.getId());
					
		MemberBean mb2=memberService.userCheck2(mb);
		
		if(mb2!=null) {
			
			// 삭제
			memberService.deleteMember2(mb);
			session.invalidate();
			return "redirect:/";
		}else {
			// 입력하신 정보가 틀립니다. 
			model.addAttribute("msg","입력하신 정보가 틀립니다.");
		//  /WEB-INF/views/member/msg.jsp
			return "member/msg";
		}
	}

	@RequestMapping(value = "/memberInfo", method = RequestMethod.GET)
	public String update(HttpSession session, Model model) {
		// String id = 세션값 가져오기
		String id = (String) session.getAttribute("id");
		// 1.세션값 변수에 저장
		String member_type = (String) session.getAttribute("member_type");

		// MemberBean mb = 세션에 해당하는 정보 조회 getMember(id) MemberBean 리턴
		MemberBean mb;
		if (member_type == "normal") {
			 mb = memberService.getMember(id);
		}else {
			mb = memberService.getMember2(id);
		}
		// 2.멤버빈에 저장
		mb.setMember_type(member_type);
		

		// model "mb",mb
		model.addAttribute("mb", mb);

		// /WEB-INF/views/member/updateForm.jsp
		return "memberInfo";
	}

	@RequestMapping(value = "/memberInfoPro", method = RequestMethod.POST)
	public String updatePro(MemberBean mb, HttpServletRequest request, Model model) {

		MemberBean mb2 = memberService.userCheck(mb);
		
		if (mb2 != null) {
			mb.setPassword(request.getParameter("newPassword"));
			// 수정
			memberService.updateMember(mb);
			
			return "redirect:/";
		} else {
			// 입력하신 정보가 틀립니다.
			model.addAttribute("msg", "입력하신 정보가 틀립니다.");
			// /WEB-INF/views/member/msg.jsp
			return "msg";
		}
	}
	
	@RequestMapping(value = "/memberInfoPro2", method = RequestMethod.POST)
	public String updatePro2(MemberBean mb, HttpServletRequest request, Model model) {
		
		MemberBean mb2=memberService.userCheck2(mb);
		if(mb2!=null) {
			mb.setPassword(request.getParameter("newPassword"));
			// 수정
			memberService.updateMember2(mb);
			return "redirect:/";
		}else {
			// 입력하신 정보가 틀립니다. 
			model.addAttribute("msg","입력하신 정보가 틀립니다.");
		//  /WEB-INF/views/member/msg.jsp
			return "msg";
		}
	}



	@RequestMapping(value = "/join/id_check", method = RequestMethod.GET)
	public ResponseEntity<String> id_check(HttpServletRequest request) {

		ResponseEntity<String> entity = null;
		String result = "";
		try {
			String id = request.getParameter("id");
			System.out.println(id);
			MemberBean mb = memberService.getMember(id);
			if (mb != null) {
				result = "iddup";
			} else {
				result = "idok";
			}
			entity = new ResponseEntity<String>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
			;
		}
		return entity;
	}

	@RequestMapping(value = "/join2/id_check2", method = RequestMethod.GET)
	public ResponseEntity<String> id_check2(HttpServletRequest request) {

		ResponseEntity<String> entity = null;
		String result = "";
		try {
			String id = request.getParameter("id");
			System.out.println(id);
			MemberBean mb = memberService.getMember2(id);
			if (mb != null) {
				result = "iddup";
			} else {
				result = "idok";
			}
			entity = new ResponseEntity<String>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
			;
		}
		return entity;
	}

}
