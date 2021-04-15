package com.jjgodcom.service;

import com.jjgodcom.vo.MemberVO;

public interface SendMailService {
	public boolean sendEmail(MemberVO vo);
}
