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
public class MemberListController implements Controller {
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			String greenb = request.getParameter("greenb_id");
						
			int greenb_id = Integer.parseInt(greenb);
			System.out.println(greenb_id + ": greenb_id");
	
			List<Member> list= memberService.listAll(greenb_id);
			
			if (list==null){
				mav.addObject("list", list);
				mav.setView("/program/table.jsp?greenb_id=1");
			}else if(greenb_id==1){
				mav.addObject("list", list);
				mav.setView("/program/table-1.jsp?greenb_id="+ list.get(greenb_id));
			}else if(greenb_id==2){
				mav.addObject("list", list);
				mav.setView("/program/table-2.jsp?greenb_id="+ list.get(greenb_id));
				
			}else if(greenb_id==3){
				mav.addObject("list", list);
				mav.setView("/program/table-3.jsp?greenb_id="+ list.get(greenb_id));
				
			}else if(greenb_id==4){
				mav.addObject("list", list);
				mav.setView("/program/table-4.jsp?greenb_id="+ list.get(greenb_id));
				
			}else if(greenb_id==5){
				mav.addObject("list", list);
				mav.setView("/program/table-5.jsp?greenb_id="+ list.get(greenb_id));

			}else{
				mav.addObject("list", list);
				mav.setView("/program/table.jsp?greenb_id="+ list.get(greenb_id));
				System.out.println("list ok");
			}				
		return mav;
	}
}
