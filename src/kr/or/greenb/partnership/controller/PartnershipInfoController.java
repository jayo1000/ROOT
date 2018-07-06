package kr.or.greenb.partnership.controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.partnership.domain.Partnership;
import kr.or.greenb.partnership.service.PartnershipService;
import kr.or.greenb.partnership.service.PartnershipServiceImpl;
public class PartnershipInfoController implements Controller {
	
	/*UserDao dao;*/
	private PartnershipService partnershipService = PartnershipServiceImpl.getInstance();

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
			
			Partnership partnership = new Partnership();
			partnership.setPartnerid(loginId);
			System.out.println(partnership.getPartnerid());

			partnership = partnershipService.myget(loginId);

			System.out.println(loginId +" loginId");
			mav.addObject("partnership", partnership);
			System.out.println(partnership);
			mav.setView("/program/info.jsp");

			return mav;
			
	}

}
