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
public class MemberPlanController implements Controller {
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
				
			String plans = request.getParameter("plan");
			int plan = Integer.parseInt(plans);
	
			List<Member> list= memberService.planAll(plan);
			System.out.println(plan + ":plan info");
			
			if (list==null){
				mav.addObject("list", list);
				mav.setView("/program/plantable.jsp?plan=0");
			}else{
				mav.addObject("list", list);
				mav.setView("/program/plantable.jsp?plan="+list.get(plan));
				System.out.println("planlist ok");
			}				
		return mav;
	}
}
