package kr.or.greenb.user.controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.user.service.UserService;
import kr.or.greenb.user.service.UserServiceImpl;

public class UserLoginController implements Controller {

	/* UserDao dao; */
	private UserService userService = UserServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		System.out.println("login1");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		boolean isMember = userService.isMember(id, passwd);
		System.out.println(id +" : 아이디 제대로 들어오냐");
		System.out.println(passwd +" : 비밀번호 들어오냐");
		if (isMember==true) {
			System.out.println("login2");
			Cookie cookie = new Cookie("loginId", id);
			cookie.setPath("/");
			response.addCookie(cookie);
			mav.addObject("/login", isMember);
			mav.setView("/login-loading.jsp");
		} else {			
			System.out.println("loginerror");
			mav.setView("/loginerror.htm");
		}
		System.out.println("login return out");
		return mav;
	}
}
