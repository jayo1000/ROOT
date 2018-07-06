package kr.or.greenb.member.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.member.domain.Member;
import kr.or.greenb.member.service.MemberService;
import kr.or.greenb.member.service.MemberServiceImpl;
public class MemberallUpdateController implements Controller {
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			String greenb2 = request.getParameter("greenb_id");	
			int greenb_id = Integer.parseInt(greenb2);
			
			Member member = new Member();
			member.setGreenb_id(greenb_id);
			
			memberService.allupdate(member);
			System.out.println(greenb_id +" : num / greenb_id");
			System.out.println(member +" : member info");
        /* userService = UserServiceImpl.getInstance();*/
		/* User users = (User) userService.regist(request.getParameter("id"));*/
		/*	Article article = dao.read(Integer.parseInt(request.getParameter("article_id")));*/
			mav.addObject("member", member);
			mav.setView("redirect:/memberlist.htm?greenb_id="+greenb_id);
			
		return mav;
	}
}
