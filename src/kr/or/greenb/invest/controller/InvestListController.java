package kr.or.greenb.invest.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.invest.domain.Invest;
import kr.or.greenb.invest.service.InvestService;
import kr.or.greenb.invest.service.InvestServiceImpl;
public class InvestListController implements Controller {
	
	/*UserDao dao;*/
	private InvestService investService = InvestServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			List<Invest> list= investService.InlistAll();

			mav.addObject("list", list);
			mav.setView("/admin-table3.jsp");			
			
		return mav;
	}
}
