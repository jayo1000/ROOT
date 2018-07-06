package kr.or.greenb.speedLoan.controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.user.service.UserService;
import kr.or.greenb.user.service.UserServiceImpl;

public class SpeedLoanLoginController implements Controller {

	/* UserDao dao; */
	private UserService userService = UserServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		boolean isMember = userService.isMember(id, passwd);
		if (isMember) {
			Cookie cookie = new Cookie("loginId", id);
			cookie.setPath("/");
			response.addCookie(cookie);

			mav.addObject("/user/login", isMember);
			mav.setView("redirect:/");
		} else {
			mav.setView("/loginerror.htm");
		}
		return mav;
	}

}
