package kr.or.greenb.partnership.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.partnership.domain.Partnership;
import kr.or.greenb.partnership.service.PartnershipService;
import kr.or.greenb.partnership.service.PartnershipServiceImpl;
public class PartnershipRegistController implements Controller {
	
	/*UserDao dao;*/
	private PartnershipService partnershipService = PartnershipServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			Partnership partnership = new Partnership();
			partnership.setPartnerid(request.getParameter("partnerid"));
			partnership.setName(request.getParameter("name"));
			partnership.setPasswd(request.getParameter("passwd"));
			partnership.setArea(request.getParameter("area"));
			
			partnershipService.regist(partnership);
			
			mav.addObject("user", partnership);
			mav.setView("/program/partnership-result.jsp");	
			
		return mav;
	}

}
