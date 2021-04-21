package com.jjgodcom.service;

import java.util.List;

import com.jjgodcom.vo.AreaTimeVO;
import com.jjgodcom.vo.BoardVO;
import com.jjgodcom.vo.MemberVO;
import com.jjgodcom.vo.SeatVO;
import com.jjgodcom.vo.TerminalVO;
import com.jjgodcom.vo.TicketingVO;

public interface MemberService {
	
	public List<MemberVO> selectList();
	public MemberVO selectOne(MemberVO vo);
	public int updateUser(MemberVO vo);
	public int updatePassword(MemberVO vo);
	public int updatePhone(MemberVO vo);
	public int deleteUser(MemberVO vo);
	public List<TerminalVO> terminalSelectList(String area);
	public int userInsert(MemberVO vo);
	public List<BoardVO> boardSelectList();
	public int boardInsert(BoardVO vo);
	public List<BoardVO> boardSearchSelectList(String email);
	public BoardVO boardSelectOne(BoardVO vo);
	public int adminAnswerUpdate(BoardVO vo);
	public List<AreaTimeVO> areaTimeSelectList(String area);
	public List<SeatVO> seatSelectList(String bus);
	public int seatUpdate(SeatVO vo);
	public int ticketingInsert(TicketingVO vo);
	public List<TicketingVO> userTicketingSelectList(String email);
	public List<TicketingVO> ticketingSelectList();
	
	
}
