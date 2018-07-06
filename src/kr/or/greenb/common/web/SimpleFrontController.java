/*package kr.or.greenb.common.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.greenb.example.controller.HelloController;
import kr.or.greenb.example.controller.TodayController;

*//**
 * 모든 웹 클라이언트 요청에 대한 단일 진입점 역할의 프론트 컨트롤러 서블릿(메인 컨트롤러)
 * @author 임영묵
 *//*
public class SimpleFrontController extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)  throws IOException, ServletException {
		process(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)  throws IOException, ServletException {
		process(request, response);
	}
	
	public void process(HttpServletRequest request, HttpServletResponse response)  throws IOException, ServletException {
		*//** 모든 세부 컨트롤러들에 대한 공통 기능 처리 *//*
		// 모든 요청파라메터에 대한 한글 인코딩 처리
		request.setCharacterEncoding("utf-8");
		
		// 웹 클라이언트 요청(브라우저 명령) 분석
		String uri = request.getRequestURI();
		
		// 확장자 형식 매핑시..
		// /appName/hello.do -> /hello
		// /appName/board/list.do -> /board/list
		String applicationName = request.getContextPath();
		uri = uri.substring(applicationName.length(), uri.lastIndexOf("."));
		System.out.println("[Debug] : 요청 URI: " + uri);		
		
		*//** 웹 클라이언트 요청에 대한 모델 비즈니스 메서드 실행 및 응답 *//*
		// Command Pattern 적용
		Controller controller = null;
		ModelAndView mav = null;
		
		switch (uri) {
			case "/hello":
			//	handleHello(request, response);
				// 모델 선택 및 사용
				controller = new HelloController();
				mav = controller.handleRequest(request, response);
				break;
			case "/today":
			//	handleToday(request, response);
				// 모델 선택 및 사용
				controller = new TodayController();
				break;
		}
		
		// 세부 컨트롤러가 등록되어 있지 않은 경우..
		if(controller == null){
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
			
		}
		
		// 세부컨트롤러 호출을 통한 ModelAndView 반환
		mav = controller.handleRequest(request, response);
		
		// request객체에 모델 저장
		Map<String, Object> map = mav.getMap();
		Set<String> keySet = map.keySet();
		for (String key : keySet) {
			Object value = map.get(key);
			request.setAttribute(key, value);
		}
		
		request.getRequestDispatcher(mav.getView()).forward(request, response);
	}	
	

	private void handleHello(HttpServletRequest request, HttpServletResponse response)  throws IOException, ServletException {
		//String message = xxxService.bizMethod();
		String message = "모델2 기반 웹애플리케이션 개발";
		
		List<String> list = new ArrayList<String>();
		list.add("Doosan 베어즈");
		list.add("LG 트윈즈");
		list.add("Samsung 라이온즈");
		
		request.setAttribute("message", message);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/example/hello.jsp").forward(request, response);
	}
	
	private void handleToday(HttpServletRequest request, HttpServletResponse response)  throws IOException, ServletException {
		Calendar today = Calendar.getInstance();
		String todayString = String.format("%1$tF %1$tT", today);
		request.setAttribute("today", todayString);
		request.getRequestDispatcher("/example/today.jsp").forward(request, response);
	}

}










*/