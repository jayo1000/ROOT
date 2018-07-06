package kr.or.greenb.speedLoan.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.speedLoan.domain.SpeedLoan;
import kr.or.greenb.speedLoan.service.SpeedLoanService;
import kr.or.greenb.speedLoan.service.SpeedLoanServiceImpl;
public class SpeedLoanListController implements Controller {
	
	/*UserDao dao;*/
	private SpeedLoanService speedloanService = SpeedLoanServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			List<SpeedLoan> list= speedloanService.SplistAll();

			mav.addObject("list", list);
			mav.setView("/admin-table2.jsp");			
			
		return mav;
	}
}
