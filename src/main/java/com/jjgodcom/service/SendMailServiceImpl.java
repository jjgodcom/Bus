package com.jjgodcom.service;

import java.security.SecureRandom;
import java.util.Date;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jjgodcom.vo.MemberVO;

@Service
public class SendMailServiceImpl implements SendMailService {
   
   @Autowired
   private JavaMailSenderImpl mailSender;

   @Autowired
   private MemberService service;
   
   //@Autowired
   //private PasswordEncoder passwordEncoder;
   
   @Override
   public boolean sendEmail(MemberVO vo) {
      String subject = "고속버스터미널 비밀번호 발송내역";

      char[] charSet = new char[] { 
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
            'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
            'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 
            'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
            'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 
            'y', 'z', '!', '@', '#', '$', '%', '^', '&' }; 
      
      String password = ""; 
      SecureRandom sr = new SecureRandom(); 
      sr.setSeed(new Date().getTime()); 
      int idx = 0; 
      int len = charSet.length; 
      for (int i = 0; i < 10; i++) { 
         idx = sr.nextInt(len); 
         password += charSet[idx]; 
      }
      
      //vo.setPassword(passwordEncoder.encode(password));
      vo.setPassword(password);
      service.updatePassword(vo);
      
      String content = "임시 비밀번호는 " +password+ " 입니다";
      
      // 보내는 사람
      String from = "flvns@naver.com";
      
      // 받는 사람
//      String to = vo.getEmail();
      String to = "flvns@naver.com";
      
      try {
         MimeMessage mail = mailSender.createMimeMessage();
         MimeMessageHelper mailHelper = new MimeMessageHelper(mail, "UTF-8");

         // 메일 내용을 채워줌
         mailHelper.setFrom(from);   // 보내는 사람 셋팅
         mailHelper.setTo(to);      // 받는 사람 셋팅
         mailHelper.setSubject(subject);   // 제목 셋팅
         mailHelper.setText(content);   // 내용 셋팅

         // 메일 전송
         mailSender.send(mail);
         return true;
      } catch(Exception e) {
         e.printStackTrace();
      }
      return false;
   }
   
}