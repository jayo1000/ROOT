package kr.or.greenb.accumloan.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.accumloan.domain.Accumloan;
import kr.or.greenb.accumloan.service.AccumloanService;
import kr.or.greenb.accumloan.service.AccumloanServiceImpl;
import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;

public class AccumloanUpdateController implements Controller {
	
	private AccumloanService accumloanService = AccumloanServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException{
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();

		Accumloan accumloan = new Accumloan();
		accumloan.setAccumloan(Integer.parseInt(request.getParameter("accumloan")));
		accumloan.setAccumloan2(Integer.parseInt(request.getParameter("accumloan2")));

		try {
			/** 정상적인 수정가능 **/
			accumloanService.accummodifys(accumloan);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mav.addObject("accumloan", accumloan);
		mav.setView("/admin.jsp");

		return mav;
	}
}

