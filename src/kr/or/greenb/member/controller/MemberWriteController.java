package kr.or.greenb.member.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
import kr.or.greenb.member.domain.Member;
import kr.or.greenb.member.service.MemberService;
import kr.or.greenb.member.service.MemberServiceImpl;
public class MemberWriteController implements Controller {
	
	/*UserDao dao;*/
	private MemberService memberService = MemberServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			String greenb = request.getParameter("greenb_id");	
			int greenb_id = Integer.parseInt(greenb);
			String pa = request.getParameter("plan");	
			int plan = Integer.parseInt(pa);
			
			String login = request.getParameter("introduce");
			
			Member member = new Member();
			member.setName(request.getParameter("name"));
			member.setGreenb_id(greenb_id);
			member.setBeginday(request.getParameter("beginday"));
			member.setDeposit(request.getParameter("deposit"));
			member.setBank(request.getParameter("bank"));
			member.setBanknumber(request.getParameter("banknumber"));
			member.setAccountname(request.getParameter("accountname"));
			member.setOther(request.getParameter("other"));
			member.setPlan(plan);
			member.setIntroduce(login);
			member.setEndday(request.getParameter("endday"));
			member.setTotalmoney(request.getParameter("totalmoney"));
			member.setTotalnumber(request.getParameter("totalnumber"));
			member.setGivenumber(request.getParameter("givenumber"));
			member.setOnedaymoney(request.getParameter("onedaymoney"));
			member.setGivemoney(request.getParameter("givemoney"));
			member.setBalance(request.getParameter("balance"));
			member.setAddress1(request.getParameter("address1"));
			member.setAddress2(request.getParameter("address2"));
			member.setAddress3(request.getParameter("address3"));
			member.setAddress4(request.getParameter("address4"));
			
			memberService.regist(member);
			System.out.println(greenb_id +" : greenbid!!");
			System.out.println(member +" : member info");
			
			if (member==null) {
				System.out.println("loginerror");
				mav.setView("/loginerror.htm");			
			} else {			
				System.out.println("write true ok");

				if (login.equals("admin")){
					mav.addObject("member", member);
					mav.setView("redirect:/alllist.htm");
					System.out.println(": admin sign sucess!");			
				}else if(login.equals("coolmonster")){
					mav.addObject("member", member);
					mav.setView("redirect:/alllist.htm");
					System.out.println(": admin sign sucess!");	
				}else{
				mav.addObject("member", member);
				System.out.println(": sign sucess!");
				mav.setView("redirect:/memberlist.htm?greenb_id="+greenb_id);
			}
				
			}
			System.out.println("write return out");
			return mav;
	}
}
