package kr.or.greenb.user.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.user.domain.Users;
import kr.or.greenb.user.service.UserService;
import kr.or.greenb.user.service.UserServiceImpl;

/**
 * 아이디 중복검사(/user/checkid) 요청에 대한 세부컨트롤러
 * @author 임영묵
 */
public class UserCheakController implements Controller {
	
	private UserService userService = UserServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		Users user = userService.myget(id);
		mav.addObject("user", user);
		mav.setView("/user/checkId.jsp");

		return mav;
	}
}
