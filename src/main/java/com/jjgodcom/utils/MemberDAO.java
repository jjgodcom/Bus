package com.jjgodcom.utils;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jjgodcom.vo.BoardVO;
import com.jjgodcom.vo.MemberVO;
import com.jjgodcom.vo.TerminalVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String MM ="com.jjgodcom.MemberMapper.";
	private static final String BM ="com.jjgodcom.BoardMapper.";
	
	// ** selctOne
	public List<MemberVO> selectList() {
		return sqlSession.selectList(MM+"selectList");
	} //selctOne
	
	// ** selctOne
	public MemberVO selectOne(MemberVO vo) {
		return sqlSession.selectOne(MM+"selectOne", vo);
	} //selctOne
	
	// ** updatePassword
	public int updateUser(MemberVO vo) {
		return sqlSession.update(MM+"updateUser", vo);
	} //updatePassword
	
	// ** updatePassword
	public int updatePassword(MemberVO vo) {
		return sqlSession.update(MM+"updatePassword", vo);
	} //updatePassword
	
	// ** updatePhone
	public int updatePhone(MemberVO vo) {
		return sqlSession.update(MM+"updatePhone", vo);
	} //updatePhone
	
	// ** delete
	public int deleteUser(MemberVO vo) {
		return sqlSession.delete(MM+"deleteUser", vo);
	} //delete
	
	// selectList
	public List<TerminalVO> terminalSelectList(String area) {
		return sqlSession.selectList(MM+"terminalSelectList", area) ;
	} //selectList
	
	// insert
	public int userInsert(MemberVO vo) {
		return sqlSession.insert(MM+"userInsert", vo);
	} //insert
	
	// ** selctOne
	public BoardVO boardSelectOne(BoardVO vo) {
		return sqlSession.selectOne(BM+"boardSelectOne", vo);
	} //selctOne
	
	// board select List
	public List<BoardVO> boardSelectList() {
		return sqlSession.selectList(BM+"boardSelectList") ;
	} //board select List
	
	// ** selctOne
	public List<BoardVO> boardSearchSelectList(String email) {
		return sqlSession.selectList(BM+"boardSearchSelectList", email);
	} //selctOne
		
	// board insert
	public int boardInsert(BoardVO vo) {
		return sqlSession.insert(BM+"boardInsert", vo);
	} // board insert
	
	// ** updatePhone
	public int adminAnswerUpdate(BoardVO vo) {
		return sqlSession.update(BM+"adminAnswerUpdate", vo);
	} //updatePhone
	
}
