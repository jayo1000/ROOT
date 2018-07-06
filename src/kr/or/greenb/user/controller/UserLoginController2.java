package kr.or.greenb.user.controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.user.service.UserService;
import kr.or.greenb.user.service.UserServiceImpl;

public class UserLoginController2 implements Controller {

	/* UserDao dao; */
	private UserService userService = UserServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();

		if (request.getMethod().equalsIgnoreCase("post")) {// 로그인 처리
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");

			if (userService.isMember(id, passwd)) {
				Cookie loginCookie = new Cookie("loginId", id);
				loginCookie.setPath("/");
				response.addCookie(loginCookie);
				mav.setView("redirect:/");
			} else {
				mav.setView("redirect:loginForm.htm");
			}
		} else {// 로그아웃 처리
			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("loginId")) {
						// 유효기간 설정
						cookie.setMaxAge(0);
						cookie.setPath("/");
						response.addCookie(cookie);
						break;
					}
				}
			}
			mav.setView("redirect:/");
		}
		return mav;
	}
}

