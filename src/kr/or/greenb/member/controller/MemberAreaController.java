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
public class MemberAreaController implements Controller {
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			String greenb = request.getParameter("greenb_id");
			int greenb_id = Integer.parseInt(greenb);
			String type = request.getParameter("type");
			String value = request.getParameter("value");
			System.out.println(greenb_id + ": greenb_id info");

			List<Member> list = memberService.areasearchvalue(greenb_id, type, value);
			System.out.println(list + ": list info");
			
			if(greenb_id==1){
				mav.addObject("list", list);
				mav.setView("/program/table-1.jsp");
			}else if (greenb_id==2){
				mav.addObject("list", list);
				mav.setView("/program/table-2.jsp");
			}else if (greenb_id==3){
				mav.addObject("list", list);
				mav.setView("/program/table-3.jsp");
			}else if (greenb_id==4){
				mav.addObject("list", list);
				mav.setView("/program/table-4.jsp");
			}else if (greenb_id==5){
				mav.addObject("list", list);
				mav.setView("/program/table-5.jsp");	
			}else {
				mav.addObject("list", list);
				mav.setView("/program/table.jsp");
			}
			return mav;	
	}
}
