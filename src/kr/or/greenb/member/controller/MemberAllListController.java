package kr.or.greenb.member.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.member.domain.Member;
import kr.or.greenb.member.service.MemberService;
import kr.or.greenb.member.service.MemberServiceImpl;
public class MemberAllListController implements Controller {
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			List<Member> list = memberService.All();
			
			if (list==null){
				mav.addObject("list", list);
				mav.setView("/program/table.jsp");
			}else{
				mav.addObject("list", list);
				mav.setView("/program/table.jsp");
				System.out.println("all ok");
			}				
		return mav;
	}
}
