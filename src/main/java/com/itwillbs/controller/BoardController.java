package com.itwillbs.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.itwillbs.domain.BoardBean;
import com.itwillbs.domain.MemberBean;
import com.itwillbs.domain.OneRoomBean;
import com.itwillbs.domain.PageBean;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.MemberService;

@Controller
public class BoardController {
	@Inject
	private BoardService boardService;
	
	@Inject
	private MemberService memberService;

	@Resource(name = "uploadPath")
	private String uploadPath;

//	http://localhost:8080/myweb2/board/write
	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
	public String write() {
		// /WEB-INF/views/board/writeForm.jsp
		return "board/writeForm";
	}

	@RequestMapping(value = "/writePro", method = RequestMethod.POST)
	public String writePro(BoardBean bb) {
		OneRoomBean testBean = new OneRoomBean();
		testBean.setSeller_id("admin@gmail.com");

//		Map<String, Object> options = new HashMap();
//		options.put("에어컨", "Y");
//		options.put("냉장고", "N");
//		Map<String, Object> include_fees = new HashMap();
//		include_fees.put("전기세", "Y");
		String[] include_fees = new String[] {"전기세", "수도세"};
		String[] options = new String[] {"에어컨", "냉장고", "TV"};
		
		testBean.setInclude_fees(include_fees);
		testBean.setOption(options);

		boardService.insertRoom(testBean);

		return "redirect:/";
	}


	@RequestMapping(value = "/findRooms", method = RequestMethod.GET)
	public String list(HttpServletRequest request, Model model, HttpSession session) {
		PageBean pb = new PageBean();
		if (request.getParameter("pageNum") != null) {
			pb.setPageNum(request.getParameter("pageNum"));
		} else {
			pb.setPageNum("1");
		}
		pb.setPageSize(9);

		List<OneRoomBean> roomList = boardService.getBoardList(pb);

		pb.setCount(boardService.getBoardCount());

		model.addAttribute("roomList", roomList);
		model.addAttribute("pb", pb);
		
		String id = (String) session.getAttribute("id");
	
		if(id != null) {
			List<MemberBean> wishList=memberService.getWishList(id);	
			model.addAttribute("wishList", wishList);
		}
		return "findRooms";
	}
	
	@RequestMapping(value = "/findRooms-zzim", method = RequestMethod.GET)
	public String zzimList(HttpServletRequest request, Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		
		PageBean pb = new PageBean();
		if (request.getParameter("pageNum") != null) {
			pb.setPageNum(request.getParameter("pageNum"));
		} else {
			pb.setPageNum("1");
		}
		pb.setPageSize(9);
		
		List<OneRoomBean> roomList = boardService.getBoardList(pb);
		
		pb.setCount(boardService.getWishCount(id));
		
		model.addAttribute("roomList", roomList);
		model.addAttribute("pb", pb);
		
		if(id != null) {
			List<MemberBean> wishList=memberService.getWishList(id);	
			model.addAttribute("wishList", wishList);
		}
		return "zzimList";
	}
	
	
	
	@RequestMapping(value = "/findRooms-search", method = RequestMethod.GET)
	public String search(HttpServletRequest request, Model model, HttpSession session, OneRoomBean ob) {
		String id = (String) session.getAttribute("id");
		
//		PageBean pb = new PageBean();
//		if (request.getParameter("pageNum") != null) {
//			pb.setPageNum(request.getParameter("pageNum"));
//		} else {
//			pb.setPageNum("1");
//		}
//		pb.setPageSize(9);
		ob.setSearch("%"+ob.getSearch()+"%");
		System.out.println("검색어 : " + ob.getSearch());
		
		ob.setRoom_type("["+ob.getRoom_type()+"]");
		System.out.println("방구조 : " + ob.getRoom_type());
		
		ob.setLiving_floor("["+ob.getLiving_floor()+"]");
		System.out.println("층수 : " + ob.getLiving_floor());
		
		System.out.println("월세 최소 : " +ob.getMonthly_rent_min());
		System.out.println("월세 최대 : " +ob.getMonthly_rent_max());
		
		System.out.println("보증금 최소 : " + ob.getDeposit_min());
		System.out.println("보증금 최대 : " + ob.getDeposit_max());
		
		List<OneRoomBean> roomList = boardService.getSearchList(ob);
		
//		pb.setCount(boardService.getWishCount(id));
//		model.addAttribute("pb", pb);
		
		model.addAttribute("roomList", roomList);
		
		if(id != null) {
			List<MemberBean> wishList=memberService.getWishList(id);	
			model.addAttribute("wishList", wishList);
		}
		return "findRooms-search";
	}
	


	
//	http://localhost:8080/myweb2/board/fwrite
	@RequestMapping(value = "/board/fwrite", method = RequestMethod.GET)
	public String fwrite() {
		// /WEB-INF/views/board/fwriteForm.jsp
		return "board/fwriteForm";
	}

	@RequestMapping(value = "/board/fwritePro", method = RequestMethod.POST)
	public String fwritePro(HttpServletRequest request, MultipartFile file) throws Exception {
		// 업로드
		System.out.println(uploadPath);
		System.out.println("원본파일이름" + file.getOriginalFilename());
		// 월본실제파일 file.getBytes()

		// 중복을 피하기 위해서 업로드파일이름 => 램덤문자_업로드파일이름
		UUID uid = UUID.randomUUID();
		String saveName = uid.toString() + "_" + file.getOriginalFilename();
		System.out.println(saveName);

		// upload폴더에 복사
		File target = new File(uploadPath, saveName);
		FileCopyUtils.copy(file.getBytes(), target);

		// 자바빈 저장
		BoardBean bb = new BoardBean();
		bb.setName(request.getParameter("name"));
		bb.setPass(request.getParameter("pass"));
		bb.setSubject(request.getParameter("subject"));
		bb.setContent(request.getParameter("content"));
//		bb.setFile(업로드된 파일이름);
		bb.setFile(saveName);

		// 디비 insertBoard()
		boardService.insertBoard(bb);

		return "redirect:/board/list";
	}

	// /board/content?num=${bb.num}
//	http://localhost:8080/myweb2/board/content?num=${bb.num}
	@RequestMapping(value = "/board/content", method = RequestMethod.GET)
	public String content(HttpServletRequest request, Model model) {
		int num = Integer.parseInt(request.getParameter("num"));
		// num 글번호에 해당하는 게시판 글 조회 => BoardBean 담아서 옴
		BoardBean bb = boardService.getBoard(num);
		// bb를 담아서 content.jsp 이동
		model.addAttribute("bb", bb);
		// /WEB-INF/views/board/content.jsp
		return "board/content";
	}

	@RequestMapping(value = "/board/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		int num = Integer.parseInt(request.getParameter("num"));
		// num 글번호에 해당하는 게시판 글 조회 => BoardBean 담아서 옴
		BoardBean bb = boardService.getBoard(num);
		// bb를 담아서 content.jsp 이동
		model.addAttribute("bb", bb);
		// /WEB-INF/views/board/content.jsp
		return "board/updateForm";
	}

	@RequestMapping(value = "/board/updatePro", method = RequestMethod.POST)
	public String updatePro(BoardBean bb, Model model) {
		BoardBean bb2 = boardService.numCheck(bb);

		if (bb2 != null) {
			boardService.updateBoard(bb);
			return "redirect:/board/list";
		} else {
			// 입력하신 정보가 틀립니다.
			model.addAttribute("msg", "입력하신 정보가 틀립니다.");
			// /WEB-INF/views/member/msg.jsp
			return "member/msg";
		}
	}

	@RequestMapping(value = "/board/delete", method = RequestMethod.GET)
	public String delete(HttpServletRequest request, Model model) {
		int num = Integer.parseInt(request.getParameter("num"));

		model.addAttribute("num", num);

		return "board/deleteForm";
	}

	@RequestMapping(value = "/board/deletePro", method = RequestMethod.POST)
	public String deletePro(BoardBean bb, Model model) {
		BoardBean bb2 = boardService.numCheck(bb);

		if (bb2 != null) {
			boardService.deleteBoard(bb);
			return "redirect:/board/list";
		} else {
			// 입력하신 정보가 틀립니다.
			model.addAttribute("msg", "입력하신 정보가 틀립니다.");
			// /WEB-INF/views/member/msg.jsp
			return "member/msg";
		}
	}
	
	@RequestMapping(value = "/detailView",method = RequestMethod.GET )
	public String detailView(HttpServletRequest request, Model model) {
		try {
			int room_id = Integer.parseInt(request.getParameter("room_id"));
			OneRoomBean ob = boardService.getRoom(room_id);
			// ob를 담아서 detailView.jsp 이동
			model.addAttribute("ob", ob);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "detailView";
	}
	

}
