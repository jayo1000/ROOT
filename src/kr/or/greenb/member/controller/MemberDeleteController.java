package kr.or.greenb.member.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.member.service.MemberService;
import kr.or.greenb.member.service.MemberServiceImpl;

public class MemberDeleteController implements Controller {
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();

		int member_num = Integer.parseInt(request.getParameter("member_num"));
		
		memberService.delete(member_num);

		mav.setView("/memberlist.htm?greenb_id=1");
		return mav;	
	}
}
