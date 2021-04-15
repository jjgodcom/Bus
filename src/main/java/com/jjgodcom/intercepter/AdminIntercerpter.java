package com.jjgodcom.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminIntercerpter extends HandlerInterceptorAdapter{
	// preHandle() : 컨트롤러보다 먼저 수행되는 메서드
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// session 객체를 가져옴
		HttpSession session = request.getSession();
		if (!session.getAttribute("email").equals("admin")) {
			session.setAttribute("fail", "admin");
			response.sendRedirect("/");
			return false;
		}
		return true;
	}
	
}
