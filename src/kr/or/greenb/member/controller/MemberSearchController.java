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
public class MemberSearchController implements Controller {
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			String type = request.getParameter("type");
			String value = request.getParameter("value");			

			List<Member> list = memberService.searchvalue(type, value);
			System.out.println(list + ": list info");

			mav.addObject("list", list);
			mav.setView("/program/table.jsp");

			return mav;	
	}
}
