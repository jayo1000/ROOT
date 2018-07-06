package kr.or.greenb.common.factory;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import kr.or.greenb.common.web.Controller;

/**
 * Simple Factory 패턴 및 Factory Method 패턴 적용 ControllerFactory
 * @author 임영묵
 */
public class ControllerFactory {
	
	// 매핑파일 경로
	private String controllerMappingPath;
	
	// 요청에 대한 세부 컨트롤러 클래스 생성 및 관리
	private HashMap<String, Controller> controllerMap;    // string(URI클래스)
	
/*	private static ControllerFactory controllerFactory;   
 *  private ControllerFactory(){}       싱글톤 패턴때문에 놔둔거*/
	
	public ControllerFactory(String controllerMappingPath){      // private가 아닌이유가..
		this.controllerMappingPath = controllerMappingPath;
		controllerMap = new HashMap<String, Controller>();

		// 매핑정보를 저장할 Properties 객체 생성
		Properties prop = new Properties();
		FileInputStream fis = null;
		try{
			
			fis = new FileInputStream(controllerMappingPath);
			prop.load(fis);                 // load를 함으로써 properties파일에 전부 저장이 되게된다.
			Iterator keyIter = prop.keySet().iterator();
			while(keyIter.hasNext()){
				String uri = (String)keyIter.next();
				/*String controllerName = (String)keyIter.next();*/
				String controllerClass = prop.getProperty(uri);
				// 컨트롤러 생성
				Controller controllerObject = (Controller)Class.forName(controllerClass).newInstance();
				// 클래스.클래스로 호출하고. 리턴타입인 컨트롤러타입으로 형변환해서 만들어낸다.
				controllerMap.put(uri, controllerObject);  // uri 키 // controllerObject 실제동작하는객체
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

	public Controller getController(String uri){
		return controllerMap.get(uri);
	}
	/*	
	*//** 싱글톤 패턴 적용을 위한 공개 메소드 *//*
	public static ControllerFactory getInstance(String controllerMappingPath){
		if(controllerFactory == null){
			synchronized (ControllerFactory.class) {
				controllerFactory = new ControllerFactory(controllerMappingPath);
			}
		}
		return controllerFactory;
	}*/
	
}









