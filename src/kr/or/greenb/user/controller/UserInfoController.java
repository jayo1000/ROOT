package kr.or.greenb.user.controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.user.domain.Users;
import kr.or.greenb.user.service.UserService;
import kr.or.greenb.user.service.UserServiceImpl;
public class UserInfoController implements Controller {
	
	/*UserDao dao;*/
	private UserService userService = UserServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
          /*userService = UserServiceImpl.getInstance();*/
			
			String loginId = null;

			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("loginId")) {
						loginId = cookie.getValue();
						break;
					}
				}
			}
			
			Users user = new Users();
			user.setId(loginId);
			System.out.println(user.getId());

			user = userService.myget(loginId);

			System.out.println(loginId +" loginId");
			mav.addObject("user", user);
			System.out.println(user);
			mav.setView("/read.jsp");

			return mav;
			
			/*User user = userService.get(request.getParameter("id"));
						
			System.out.println(user);
			System.out.println("userinfo-in?");
			mav.addObject("user", user);
			mav.setView("/read.jsp");
						
		return mav;*/
	}

}
