package kr.or.greenb.main.controller;

import java.util.Calendar;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;

/**
 * 
 *  /user/list 요청에 대한 세부 컨트롤러  ( 리스트에 대한 리스너 )
 * @author 임영묵
 *
 */

public class IndexController implements Controller {
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			//Service 객체를 이용하여 홈페이지에서 출력하고자 하는 동적 데이터 생성
			//mav.addObject("someKey", someValue);
			mav.addObject("today", String.format("%1$tF %1$tT",Calendar.getInstance()));
			mav.setView("/index.jsp");
				
		return mav;
	}
}
