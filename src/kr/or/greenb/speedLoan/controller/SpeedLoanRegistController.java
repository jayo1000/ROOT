package kr.or.greenb.speedLoan.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.speedLoan.domain.SpeedLoan;
import kr.or.greenb.speedLoan.service.SpeedLoanService;
import kr.or.greenb.speedLoan.service.SpeedLoanServiceImpl;
public class SpeedLoanRegistController implements Controller {
	
	/*UserDao dao;*/
	private SpeedLoanService speedloanService = SpeedLoanServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			SpeedLoan speedloan = new SpeedLoan();
			speedloan.setName(request.getParameter("name"));
			speedloan.setPhonenumber1(request.getParameter("phonenumber1"));
			speedloan.setPhonenumber2(request.getParameter("phonenumber2"));
			speedloan.setPhonenumber3(request.getParameter("phonenumber3"));
			speedloan.setRequestmoney(request.getParameter("requestmoney"));
			speedloan.setIp(request.getParameter("ip"));
			
			speedloanService.Spregist(speedloan);
			
			System.out.println("들어는오냐");
			
        /* userService = UserServiceImpl.getInstance();*/
		/* User users = (User) userService.regist(request.getParameter("id"));*/
		/*	Article article = dao.read(Integer.parseInt(request.getParameter("article_id")));*/
			mav.addObject("loan", speedloan);
			mav.setView("/loan.jsp");	
			
		return mav;
	}

}
