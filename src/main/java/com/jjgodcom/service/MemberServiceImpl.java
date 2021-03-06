package com.jjgodcom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jjgodcom.utils.MemberDAO;
import com.jjgodcom.vo.AreaTimeVO;
import com.jjgodcom.vo.BoardVO;
import com.jjgodcom.vo.MemberVO;
import com.jjgodcom.vo.SeatVO;
import com.jjgodcom.vo.TerminalVO;
import com.jjgodcom.vo.TicketingVO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDAO dao;	
	
	@Override
	public List<MemberVO> selectList() {
		return dao.selectList();
	}
	
	@Override
	public MemberVO selectOne(MemberVO vo) {
		return dao.selectOne(vo);
	}
	
	@Override
	public int updateUser(MemberVO vo) {
		return dao.updateUser(vo);
	}

	@Override
	public int updatePassword(MemberVO vo) {
		return dao.updatePassword(vo);
	}

	@Override
	public List<TerminalVO> terminalSelectList(String area) {
		return dao.terminalSelectList(area);
	}

	@Override
	public int userInsert(MemberVO vo) {
		return dao.userInsert(vo);
	}

	@Override
	public int boardInsert(BoardVO vo) {
		return dao.boardInsert(vo);
	}

	@Override
	public List<BoardVO> boardSelectList() {
		return dao.boardSelectList();
	}

	@Override
	public List<BoardVO> boardSearchSelectList(String email) {
		return dao.boardSearchSelectList(email);
	}

	@Override
	public int updatePhone(MemberVO vo) {
		return dao.updatePhone(vo);
	}

	@Override
	public int deleteUser(MemberVO vo) {
		return dao.deleteUser(vo);
	}

	@Override
	public BoardVO boardSelectOne(BoardVO vo) {
		return dao.boardSelectOne(vo);
	}

	@Override
	public int adminAnswerUpdate(BoardVO vo) {
		return dao.adminAnswerUpdate(vo);
	}

	@Override
	public List<AreaTimeVO> areaTimeSelectList(String area) {
		return dao.areaTimeSelectList(area);
	}

	@Override
	public List<SeatVO> seatSelectList(String bus) {
		return dao.seatSelectList(bus);
	}

	@Override
	public int seatUpdate(SeatVO vo) {
		return dao.seatUpdate(vo);
	}

	@Override
	public int ticketingInsert(TicketingVO vo) {
		return dao.ticketingInsert(vo);
	}

	@Override
	public List<TicketingVO> userTicketingSelectList(String email) {
		return dao.userTicketingSelectList(email);
	}

	@Override
	public List<TicketingVO> ticketingSelectList() {
		return dao.ticketingSelectList();
	}

	

	
	

	
}
