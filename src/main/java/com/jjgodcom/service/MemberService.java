package com.jjgodcom.service;

import java.util.List;

import com.jjgodcom.vo.BoardVO;
import com.jjgodcom.vo.MemberVO;
import com.jjgodcom.vo.TerminalVO;

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
}
