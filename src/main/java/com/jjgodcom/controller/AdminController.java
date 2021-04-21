package com.jjgodcom.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jjgodcom.service.MemberService;
import com.jjgodcom.vo.BoardVO;
import com.jjgodcom.vo.MemberVO;

@Controller
public class AdminController {
	@Autowired
	MemberService service;
	
	// user main page
	@RequestMapping(value = "/admin/memberList")
	public ModelAndView adminMemberList(ModelAndView mv) {
		List<MemberVO> list = service.selectList();
		mv.addObject("list",list);
		mv.setViewName("admin/member/list");
		return mv;
	}
	
	// admin member modify
	@RequestMapping(value = "/admin/memberModify")
	public ModelAndView adminMemberModify(ModelAndView mv, MemberVO vo,HttpServletRequest request) {
		
		vo.setEmail(request.getParameter("email"));
		vo = service.selectOne(vo);
		mv.addObject("vo",vo);
		mv.setViewName("admin/member/modify");
		return mv;
	}
	
	@RequestMapping(value = "/admin/memberModify", method =RequestMethod.POST )
	public ModelAndView deleteUser(ModelAndView mv, MemberVO vo,HttpSession session,HttpServletRequest request) {
		service.updateUser(vo);
		mv.setViewName("redirect:/admin/memberList");
		return mv;
	}
	
	// admin questions list
	@RequestMapping(value = "/admin/questionsList")
	public ModelAndView adminQuestionsList(ModelAndView mv) {
		List<BoardVO> list = service.boardSelectList();
		mv.addObject("list",list);
		mv.setViewName("admin/questions/list");
		return mv;
	}

	// admin questions detail
	@RequestMapping(value = "/admin/questionsDetail")
	public ModelAndView adminQuestionsDetail(ModelAndView mv,HttpServletRequest request, BoardVO vo) {
		int sqe = Integer.parseInt(request.getParameter("seq"));

		vo.setSeq(sqe);
		vo.setEmail(request.getParameter("email"));
		vo = service.boardSelectOne(vo);
		mv.addObject("vo",vo);
		mv.setViewName("admin/questions/detail");
		return mv;
	}
	
	// admin questions detail
	@RequestMapping(value = "/admin/questionsDetail", method =RequestMethod.POST )
	public ModelAndView adminQuestionsDetail(ModelAndView mv,HttpServletRequest request, BoardVO vo,HttpSession session) {
		service.adminAnswerUpdate(vo);
		mv.setViewName("redirect:/admin/questionsList");
		return mv;
	}
	
	// admin ticketing list
	@RequestMapping(value = "/admin/ticketingList")
	public ModelAndView adminTicketingList(ModelAndView mv) {
		mv.setViewName("admin/ticketing/list");
		return mv;
	}

}
