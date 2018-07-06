package kr.or.greenb.accumloan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import kr.or.greenb.accumloan.domain.Accumloan;
import kr.or.greenb.accumloan.service.AccumloanService;
import kr.or.greenb.accumloan.service.AccumloanServiceImpl;
import kr.or.greenb.common.web.Controller;
import kr.or.greenb.common.web.ModelAndView;
public class AccumloanListController implements Controller {
	
	/*UserDao dao;*/
	private AccumloanService accumloanService = AccumloanServiceImpl.getInstance();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
			ModelAndView mav = new ModelAndView();

			List<Accumloan> list = accumloanService.accumAll();
			System.out.println(list);
			
			JSONObject object = new JSONObject();

			JSONArray array = new JSONArray();
			
			JSONObject obj = new JSONObject();
			
			for (Accumloan accumloan : list) {		
			obj.put("accumloan", accumloan.getAccumloan());
			obj.put("accumloan2", accumloan.getAccumloan2());
			array.add(obj);
		}

		object.put("list", array);

		// JSON 출력
		response.setContentType("text/plain; charset=utf-8");
		try {
			PrintWriter out = response.getWriter();
			out.println(object.toJSONString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

/*			mav.addObject("list", list);	
			mav.setView("/index.jsp");		
			
		return mav;*/
	}
