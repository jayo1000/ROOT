package kr.or.greenb.common.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * View 결정 및 실행
 * @author 임영묵
 *
 */
public interface ViewResolver{
	public void execute(HttpServletRequest request, HttpServletResponse response, String uri) throws ServletException, IOException;
}
