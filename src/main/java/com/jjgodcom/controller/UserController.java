package com.jjgodcom.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jjgodcom.service.MemberService;
import com.jjgodcom.service.SendMailService;
import com.jjgodcom.vo.AreaTimeVO;
import com.jjgodcom.vo.BoardVO;
import com.jjgodcom.vo.MemberVO;
import com.jjgodcom.vo.SeatVO;
import com.jjgodcom.vo.TerminalVO;
import com.jjgodcom.vo.TicketingVO;

@Controller
public class UserController {
	@Autowired
	MemberService service;
	@Autowired
	SendMailService mail;
	
	// user main page
	@RequestMapping(value = {"/","/main"})
	public ModelAndView main(ModelAndView mv) {
		mv.setViewName("user/main/main");
		return mv;
	}
	
	// user join page
	@RequestMapping(value = "/join")
	public ModelAndView join(ModelAndView mv) {
		mv.setViewName("user/join/join");
		return mv;
	}
	
	@RequestMapping(value = "/join" , method =RequestMethod.POST ) 
	public ModelAndView join(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, MemberVO vo) {
		int cnt = service.userInsert(vo);
		
		if(cnt > 0) {
			// 가입 성공
			mv.addObject("message","회원가입 성공!");
			mv.setViewName("user/login/login");
		}else {
			// 가입 실패
			mv.setViewName("user/join/join");
		}
		return mv;
	}
	
	// user login page
	@RequestMapping(value = "/login")
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("user/login/login");
		return mv;
	}
	
	@RequestMapping(value = "/login" , method =RequestMethod.POST ) 
	public ModelAndView loginDo(HttpServletRequest request, ModelAndView mv, MemberVO vo, HttpSession session) {

		String pw = vo.getPassword();
		vo = service.selectOne(vo);
		
		// fail이 빈값이 아닐경우
		if (session.getAttribute("fail") !=null) {
			session.removeAttribute("fail");
		}
		
		if(vo != null) {
			// 일치하는 아이디 있음
			if (vo.getPassword().equals(pw)) {
				// 아이디 비빌번호 일치
				request.getSession().setAttribute("email", vo.getEmail());
				if(vo.getEmail().equals("admin")) {
					mv.setViewName("redirect:/admin/memberList");
				}else {
					mv.setViewName("user/main/main");
				}
			}else {
				// 아이디는 일치하는데 비밀번호 일치 하지 않음
				mv.addObject("message","비밀번호 일치 하지 않음. 다시시도해주세요.");
				mv.setViewName("user/login/login");
			}
		}else {
			// 일치하는 아이디 없음
			mv.addObject("message","아이디 일치 하지 않음. 다시시도해주세요.");
			mv.setViewName("user/login/login");
		}
		return mv;
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logoutDo(HttpServletRequest request, ModelAndView mv, RedirectAttributes rttr) {
		
		
		HttpSession session = request.getSession(false);
		
		if (session !=null && session.getAttribute("email") !=null) {
			session.invalidate();
		}
		mv.setViewName("user/main/main"); 
		return mv;
	}
	
	// user find id page
	@RequestMapping(value = "/findID")
	public ModelAndView findID(ModelAndView mv) {
		mv.setViewName("user/login/findID");
		return mv;
	}
	
	@RequestMapping(value = "/findID" , method =RequestMethod.POST ) 
	public ModelAndView findIDDO(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, MemberVO vo) {
		
		// jsonView 사용시 response 의 한글 처리
		response.setContentType("text/html; charset=UTF-8");		
		vo = service.selectOne(vo);
		
		if(vo != null) {
			// 맞을경우
			mv.addObject("email",vo.getEmail());
		}else {
			// 일치하는 번호 없음
			mv.addObject("message","일치하는 휴대폰 번호가 없습니다. 다시 시도해 주세요.");
		}
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	// user find pw page
	@RequestMapping(value = "/findPW")
	public ModelAndView findPW(ModelAndView mv) {
		mv.setViewName("user/login/findPW");
		return mv;
	}
	
	@RequestMapping(value = "/findPW" , method =RequestMethod.POST ) 
	public ModelAndView findPW(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, MemberVO vo) {
		
		// jsonView 사용시 response 의 한글 처리
		response.setContentType("text/html; charset=UTF-8");		
		vo = service.selectOne(vo);
		if(vo != null) {
			// 맞을경우
			mv.addObject("email",vo.getEmail());
		}
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@RequestMapping(value = "/sendPW") 
	public ModelAndView sendPW(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, MemberVO vo) {
		
		if(mail.sendEmail(vo)) {
			mv.setViewName("user/login/login");
		}else {
			mv.setViewName("user/login/findPW");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "/terminal")
	public ModelAndView terminal(ModelAndView mv, @RequestParam(defaultValue = "서울", required = false) String area ,MemberVO vo) {

		List<TerminalVO> terminal = service.terminalSelectList(area);
		mv.addObject("terminal",terminal);
		
		
		mv.setViewName("user/terminal/terminal");
		return mv;
	}
	
	@RequestMapping(value = "/qnaList")
	public ModelAndView qnaList(ModelAndView mv) {
		List<BoardVO> list = service.boardSelectList();
		mv.addObject("list",list);
		mv.setViewName("user/qna/list");
		return mv;
	}
	
	@RequestMapping(value = "/qnaSearch")
	public ModelAndView qnaSearch(ModelAndView mv,@RequestParam String email, BoardVO vo, RedirectAttributes attributes) {
		
		List<BoardVO> list = service.boardSearchSelectList(email);
		if(list.size() > 0) {
			// 값이 있을 경우
			mv.addObject("list",list);
			mv.setViewName("user/qna/list");
		}else {
			// 값이 없을 경우
			attributes.addFlashAttribute("message","검색하신 email로 작성된 글이 없습니다.");
			mv.setViewName("redirect:/qnaList");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "/qnaRegister")
	public ModelAndView qnaRegister(ModelAndView mv) {
		mv.setViewName("user/qna/register");
		return mv;
	}
	
	@RequestMapping(value = "/qnaRegister", method =RequestMethod.POST ) 
	public ModelAndView qnaRegister(HttpSession session,HttpServletRequest request, HttpServletResponse response, ModelAndView mv, BoardVO vo,RedirectAttributes attributes) {
		
		String email = (String)session.getAttribute("email");
		vo.setEmail(email);
		
		int cnt = service.boardInsert(vo);
		if(cnt > 0) {
			attributes.addFlashAttribute("message","등록 성공!"); // 1회용으로 처리 하기 위해서사용함
		}else {
			attributes.addFlashAttribute("message","등록 실패!");
		}
		mv.setViewName("redirect:/qnaList");

		return mv;
	}
	
	@RequestMapping(value = "/myPage")
	public ModelAndView myPage(HttpSession session,ModelAndView mv, MemberVO vo, TicketingVO tvo) {
		
		String email = (String)session.getAttribute("email");
		vo.setEmail(email);
		vo = service.selectOne(vo);
		mv.addObject("user",vo);
		
		mv.setViewName("user/myPage/home");
		return mv;
	}
	
	@RequestMapping(value = "/changePW")
	public ModelAndView changePW(ModelAndView mv) {
		mv.setViewName("user/myPage/changePW");
		return mv;
	}
	
	@RequestMapping(value = "/changePW", method =RequestMethod.POST )
	public ModelAndView changePW(ModelAndView mv, MemberVO vo, HttpServletRequest request, HttpSession session,RedirectAttributes attributes) {
		// 1. 실제 디비에 있는 유저 비밀번호 랑 입력한 비밀번호 하고 비교
		// # - 이메일 셀렉트 원인데 where 조건을 비밀번호로 걸어버려
		// # select * from member_tb where email = 'email' AND password = 'newPassWord'
		// # 셀렉트 원 사이즈가 0 이거나 1 둘중하나 로 판단
		// # 셀렉트 원으로 값 가져오기
		
		String email = (String)session.getAttribute("email");
		String input_pw = request.getParameter("password");
		String new_pw = request.getParameter("newPassword");
		vo.setEmail(email);
		vo = service.selectOne(vo);

		if(vo.getPassword().equals(input_pw)) {
			vo.setPassword(new_pw);
			service.updatePassword(vo);
			attributes.addFlashAttribute("message","비밀번호 변경 성공! 재로그인 해주세요.");
			mv.setViewName("redirect:/logout");
		}else {
			attributes.addFlashAttribute("message","비밀번호 일치하지 않음 변경 불가!");
			mv.setViewName("redirect:/changePW");
		}
		return mv;
	}
	
	@RequestMapping(value = "/changeNumber")
	public ModelAndView changeNumber(ModelAndView mv) {
		mv.setViewName("user/myPage/changeNumber");
		return mv;
	}
	
	@RequestMapping(value = "/changeNumber", method =RequestMethod.POST )
	public ModelAndView changeNumber(ModelAndView mv, MemberVO vo,HttpSession session,HttpServletRequest request,RedirectAttributes attributes) {
		String email = (String)session.getAttribute("email");
		String input_pw = request.getParameter("password");
		String input_pn = request.getParameter("number");
		vo.setEmail(email);
		vo = service.selectOne(vo);
		
		if(vo.getPassword().equals(input_pw)) {
			vo.setPhone(input_pn);
			service.updatePhone(vo);
			attributes.addFlashAttribute("message","핸드폰 번호 변경 성공!");
			mv.setViewName("redirect:/myPage");
		}else {
			attributes.addFlashAttribute("message","비밀번호 일치하지 않음 변경 불가!");
			mv.setViewName("redirect:/changeNumber");
		}
		return mv;
	}
	
	@RequestMapping(value = "/deleteUser", method =RequestMethod.POST )
	public ModelAndView deleteUser(ModelAndView mv, MemberVO vo,HttpSession session,HttpServletRequest request,RedirectAttributes attributes) {
		
		String email = (String)session.getAttribute("email");
		String input_pw = request.getParameter("password");
		
		vo.setEmail(email);
		vo = service.selectOne(vo);
		
		if(vo.getPassword().equals(input_pw)) {
			service.deleteUser(vo);
			attributes.addFlashAttribute("message","탈퇴성공!");
			mv.setViewName("redirect:/logout");
		}else {
			attributes.addFlashAttribute("message","비밀번호 일치하지 않음 회원 탈퇴 불가! ");
			mv.setViewName("redirect:/myPage");
		}
		
		return mv;
	}
	
	// user ticketing search page
	@RequestMapping(value = "/busSearch")
	public ModelAndView search(HttpServletRequest request,ModelAndView mv) {
		
		String area = request.getParameter("departure_area");
		List<AreaTimeVO> terminal = service.areaTimeSelectList(area);
		mv.addObject("list",terminal);
		mv.setViewName("user/ticketing/search");
		return mv;
	}
	
	// user ticketing seat page
	@RequestMapping(value = "/seat")
	public ModelAndView seat(ModelAndView mv,HttpServletRequest request,HttpServletResponse response) {
		
		String seat = request.getParameter("seat");
		String departure_time = request.getParameter("departure_time");
		String departure_area = request.getParameter("departure_area");
		String destination = request.getParameter("destination");
		String remaining_seats = request.getParameter("remaining_seats");
		List<SeatVO> list = service.seatSelectList(seat);
		
		// 페이지에 세팅하기 위한거
		mv.addObject("table",seat);
		mv.addObject("departure_time",departure_time);
		mv.addObject("departure_area",departure_area);
		mv.addObject("destination",destination);
		mv.addObject("remaining_seats",remaining_seats);
		mv.addObject("list",list);
		
		mv.setViewName("user/ticketing/seat");
		return mv;
	}
	
	@RequestMapping(value = "/ticketUpdate")
	public ModelAndView ticketList(ModelAndView mv,HttpServletRequest request, SeatVO svo,TicketingVO tvo,HttpSession session) {
		
		// A - 테이블(seat) 좌석 업데이트
		// #1 - email 업데이트
		// #1 - seat_number 맞는곳에 available_seat 1로 업데이트
		String table = request.getParameter("table");
		String email = (String) session.getAttribute("email");
		String check_seat = request.getParameter("check_seat"); // ,로 저장된 문자열
		String[] seatArr = check_seat.split(","); // 배열로 수정
		
		for (String s : seatArr) {
			// 배열 크기 만큼 업데이트
			svo.setBus_name(table);
			svo.setEmail(email);
			svo.setSeat_number(Integer.parseInt(s)); // 선택된 좌석
			svo.setAvailable_seat(1);
			service.seatUpdate(svo);
		}

		// B - ticketing_detail_tb 테이블 인서트
		tvo.setEmail(email); // 이메일
		tvo.setDeparture_area(request.getParameter("departure_area")); // 출발지
		tvo.setDestination(request.getParameter("destination")); // 도착치
		tvo.setNumber_of_tickets(Integer.toString(seatArr.length)); // 티켓수
		tvo.setSeat_number(check_seat); // 좌석번호
		tvo.setDeparture_date(request.getParameter("departure_date")); // 출발날짜시간 
		tvo.setTicketing_status(1); // 예매상태
		tvo.setBus_name(table); // 버스이름(테이블명)
		tvo.setArea_name("tt"); // 모름
		service.ticketingInsert(tvo);
		
		mv.setViewName("redirect:/ticketList");
		return mv;
	}
	
	@RequestMapping(value = "/ticketList")
	public ModelAndView ticketList(ModelAndView mv,HttpSession session) {
		String email = (String) session.getAttribute("email");
		List<TicketingVO> list = service.userTicketingSelectList(email);
		mv.addObject("list",list);
		
		mv.setViewName("user/myPage/ticketList");
		return mv;
	}

}
