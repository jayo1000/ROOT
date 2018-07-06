package kr.or.greenb.member.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.member.domain.Member;
import kr.or.greenb.member.service.MemberService;
import kr.or.greenb.member.service.MemberServiceImpl;

public class MemberViewController implements Controller{
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		
/*		int greenb_id = Integer.parseInt(request.getParameter("greenb_id"));*/
		int member_num = Integer.parseInt(request.getParameter("member_num"));
		
		System.out.println(member_num);
		Member member = memberService.selectMember(member_num);
		mav.addObject("member", member);		
		mav.setView("/program/re.jsp?member_num="+member_num);
		
		return mav;
	}
}
