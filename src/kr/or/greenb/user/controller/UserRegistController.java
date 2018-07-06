package kr.or.greenb.user.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.user.domain.Users;
import kr.or.greenb.user.service.UserService;
import kr.or.greenb.user.service.UserServiceImpl;
public class UserRegistController implements Controller {
	
	/*UserDao dao;*/
	private UserService userService = UserServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			Users user = new Users();
			user.setId(request.getParameter("id"));
			user.setName(request.getParameter("name"));
			user.setPasswd(request.getParameter("passwd"));
			user.setEmail(request.getParameter("email"));
			user.setJob(request.getParameter("job"));
			user.setPhonenumber1(request.getParameter("phonenumber1"));
			user.setPhonenumber2(request.getParameter("phonenumber2"));
			user.setPhonenumber3(request.getParameter("phonenumber3"));
			
			userService.regist(user);
			
        /* userService = UserServiceImpl.getInstance();*/
		/* User users = (User) userService.regist(request.getParameter("id"));*/
		/*	Article article = dao.read(Integer.parseInt(request.getParameter("article_id")));*/
			mav.addObject("user", user);
			mav.setView("/sign-result.jsp");	
			
		return mav;
	}

}
