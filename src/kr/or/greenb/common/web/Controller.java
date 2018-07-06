package kr.or.greenb.common.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 모든 세부 컨트롤러에 대한 실행메소드 규격 선언
 * @author 임영묵
 */
public interface Controller {
	/** 실행 규약 메소드 */
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException;
}