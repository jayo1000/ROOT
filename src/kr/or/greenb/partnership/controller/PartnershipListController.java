package kr.or.greenb.partnership.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.partnership.domain.Partnership;
import kr.or.greenb.partnership.service.PartnershipService;
import kr.or.greenb.partnership.service.PartnershipServiceImpl;
public class PartnershipListController implements Controller {
	
	/*UserDao dao;*/
	private PartnershipService partnershipService = PartnershipServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
	
			List<Partnership> plist= partnershipService.listAll();
			
			mav.addObject("plist", plist);
			mav.setView("/program/partnerlist.jsp");
			
		return mav;
	}
}
