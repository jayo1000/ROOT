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
import kr.or.greenb.user.service.UserService;
import kr.or.greenb.user.service.UserServiceImpl;

public class PartnershipLoginController implements Controller {

	/* UserDao dao; */
	private PartnershipService partnershipService = PartnershipServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		System.out.println("login1");
		String partnerid = request.getParameter("partnerid");
		String passwd = request.getParameter("passwd");

		boolean isMember = partnershipService.isMember(partnerid, passwd);
		System.out.println(partnerid +" : id");
		System.out.println(passwd +" : passwd");
		System.out.println(isMember +" : isMember info");
		
		Partnership partnership = new Partnership();
		partnership.setPartnerid(partnerid);
		System.out.println(partnership.getPartnerid());

		partnership = partnershipService.myget(partnerid);
		
		System.out.println(partnership +" : partnership info");
		
		String area = partnership.getArea();
		
		if (isMember==false) {
			System.out.println("loginerror");
			mav.setView("/loginerror.htm");			
		} else {			
			System.out.println("true ok");

			if (partnerid.equals("admin")){
				Cookie cookie = new Cookie("loginId", partnerid);
				System.out.println("login admin");
				cookie.setPath("/");
				response.addCookie(cookie);
				mav.addObject("/login", isMember);
				mav.setView("/program/loading.jsp");
			}else if(partnerid.equals("coolmonster")){
				Cookie cookie = new Cookie("loginId", partnerid);
				System.out.println("login admin");
				cookie.setPath("/");
				response.addCookie(cookie);
				mav.addObject("/login", isMember);
				mav.setView("/program/loading.jsp");
			}else if(area.equals("1")){
				Cookie cookie = new Cookie("loginId", partnerid);
				System.out.println("login admin");
				cookie.setPath("/");
				response.addCookie(cookie);
				mav.addObject("/login", isMember);
				mav.setView("/program/loading-inchen.jsp");
			}else if(area.equals("2")){
				Cookie cookie = new Cookie("loginId", partnerid);
				System.out.println("login admin");
				cookie.setPath("/");
				response.addCookie(cookie);
				mav.addObject("/login", isMember);
				mav.setView("/program/loading-gwangju.jsp");
			}else if(area.equals("3")){
				Cookie cookie = new Cookie("loginId", partnerid);
				System.out.println("login admin");
				cookie.setPath("/");
				response.addCookie(cookie);
				mav.addObject("/login", isMember);
				mav.setView("/program/loading-jeonju.jsp");
			}else if(area.equals("4")){
				Cookie cookie = new Cookie("loginId", partnerid);
				System.out.println("login admin");
				cookie.setPath("/");
				response.addCookie(cookie);
				mav.addObject("/login", isMember);
				mav.setView("/program/loading-dongtan.jsp");
			}
			else if(area.equals("5")){
				Cookie cookie = new Cookie("loginId", partnerid);
				System.out.println("login admin");
				cookie.setPath("/");
				response.addCookie(cookie);
				mav.addObject("/login", isMember);
				mav.setView("/program/loading-other.jsp");
			}
			
		}
		System.out.println("login return out");
		return mav;
	}
}
