package kr.or.greenb.invest.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.invest.domain.Invest;
import kr.or.greenb.invest.service.InvestService;
import kr.or.greenb.invest.service.InvestServiceImpl;
public class InvestRegistController implements Controller {
	
	/*UserDao dao;*/
	private InvestService investservice = InvestServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			Invest invest = new Invest();
			invest.setName(request.getParameter("name"));
			invest.setEmail(request.getParameter("email"));
			invest.setPhonenumber(request.getParameter("phonenumber"));
			invest.setWanted(request.getParameter("wanted"));
			invest.setIp(request.getParameter("ip"));
			
			investservice.Inregist(invest);
			
			System.out.println("들어는오냐");
			
        /* userService = UserServiceImpl.getInstance();*/
		/* User users = (User) userService.regist(request.getParameter("id"));*/
		/*	Article article = dao.read(Integer.parseInt(request.getParameter("article_id")));*/
			mav.addObject("invest", invest);
			mav.setView("/invest-loading.jsp");	
			
		return mav;
	}

}
