package com.itwillbs.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.itwillbs.domain.MemberBean;
//import com.itwillbs.service.KakaoService;
//import com.itwillbs.findhome.Kakao_restapi;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController {
	// 스프링 DI(의존관계주입): 스프링 객체생성 방식
	// MemberService memberService=new MemberServiceImpl(); 객체생성
	// xml에서 MemberServiceImpl 객체생성 set메서드 호출해서
	// 부모인터페이스 멤버변수에 객체생성한 값을 전달 MemberService memberService
	@Inject
	private MemberService memberService;
	private JsonNode accessToken;
	private Kakao_restapi kakao_restapi=new Kakao_restapi();
	

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

	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {

		session.invalidate();

		return "redirect:/member/login";
	}

	@RequestMapping(value = "/member/delete", method = RequestMethod.GET)
	public String delete() {
		// /WEB-INF/views/member/deleteForm.jsp
		return "member/deleteForm";
	}
	
	@RequestMapping(value = "/memberInfo",method = RequestMethod.GET )
	public String memberinfo() {
		return "memberInfo";
	}


	@RequestMapping(value = "/memberDelete",method = RequestMethod.GET )
	public String memberdelete() {
		return "memberDelete";
	}
	
	@RequestMapping(value = "/join/id_check", method = RequestMethod.GET )
	public ResponseEntity<String> id_check(HttpServletRequest request) {
		
		ResponseEntity<String> entity = null;
		String result = "";
		try {
			String id = request.getParameter("id");
			System.out.println(id);
			MemberBean mb = memberService.getMember(id);
			if(mb != null) {
				result = "iddup";
			} else {
				result = "idok";
			}
			entity = new ResponseEntity<String>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);; 
		}
		return entity;
	}
	
	@RequestMapping(value = "/join2/id_check2", method = RequestMethod.GET )
	public ResponseEntity<String> id_check2(HttpServletRequest request) {
		
		ResponseEntity<String> entity = null;
		String result = "";
		try {
			String id = request.getParameter("id");
			System.out.println(id);
			MemberBean mb = memberService.getMember2(id);
			if(mb != null) {
				result = "iddup";
			} else {
				result = "idok";
			}
			entity = new ResponseEntity<String>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);; 
		}
		return entity;
	}
	
	@RequestMapping(value = "/find_pw", method = RequestMethod.GET)
	public String find_pw() {
		return "find_pw";
	}
	
	
	@RequestMapping(value="/oauth",method= RequestMethod.GET)
	 public String kakaoConnect() {

	  StringBuffer url = new StringBuffer();
	  url.append("https://kauth.kakao.com/oauth/authorize?");
	  url.append("client_id=" + "b0993beef1eb3df1922ad92776e6688b");
	  url.append("&redirect_uri=http://localhost:8080/findhome/kakaologin");
	  url.append("&response_type=code");

	  return "redirect:" + url.toString();
	 
	 }
	 
	 @RequestMapping(value="/kakaologin", produces="application/json", method= {RequestMethod.GET, RequestMethod.POST})
	 public String kakaoLogin(@RequestParam("code")String code,RedirectAttributes ra,HttpSession session,HttpServletResponse response ,String autorize_code)throws IOException {
	  
	  System.out.println("kakao code:"+code);
	  JsonNode access_token = kakao_restapi.getAccessToken(code);
	  access_token.get("access_token");
	  System.out.println("access_token:" + access_token.get("access_token"));

	  JsonNode userInfo = kakao_restapi.getKakaoUserInfo(access_token.get("access_token"));

	         
	         String id = userInfo.path("id").asText();
	         String name = null;
	         String email = null;
	        
	     
	         JsonNode properties = userInfo.path("properties");
	         JsonNode kakao_account = userInfo.path("kakao_account");
	         name = properties.path("nickname").asText(); //이름 정보 가져오는 것
	         email = kakao_account.path("account_email").asText();
	         
	         session.setAttribute("isLogOn",true);
	         session.setAttribute("id",name);  
	         session.setAttribute("account_email", kakao_account);  
	        
	         System.out.println("id : " + id);    //여기에서 값이 잘 나오는 것 확인 가능함.
	         System.out.println("name : " + name);
	         System.out.println("email : " + email);
	  
	         return "redirect:/";
	 }
	
	
}
