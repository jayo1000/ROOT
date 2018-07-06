package kr.or.greenb.user.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.user.domain.Users;
import kr.or.greenb.user.service.UserService;
import kr.or.greenb.user.service.UserServiceImpl;
public class UserListController implements Controller {
	
	/*UserDao dao;*/
	private UserService userService = UserServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
	
			List<Users> list= userService.listAll();
			
			mav.addObject("list", list);
			mav.setView("/admin-table1.jsp");
			
		return mav;
	}
}
