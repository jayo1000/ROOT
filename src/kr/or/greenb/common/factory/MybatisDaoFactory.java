package kr.or.greenb.common.factory;
import java.util.Hashtable;

/**
 * Mybatis Framework를 이용하여 업무 관련 DAO를 생성하는 팩토리클래스
 * 1. Map에서 Mybatis Dao 객체 검색 및 반환
 * 2. 존재하지 않을 경우 Mybatis Dao 생성 및 DataSource 의존관계 설정
 * 3. 생성된 Mybatis Dao 객체 Map에 저장 및 반환
 */
public class MybatisDaoFactory extends DaoFactory{
	
	private Hashtable<String, Object> daoList;
	
	public MybatisDaoFactory(){
		daoList = new Hashtable<String, Object>();
	}
	
	public Hashtable<String, Object> getDaoList() {
		return daoList;
	}

	public void setDaoList(Hashtable<String, Object> daoList) {
		this.daoList = daoList;
	}
	
	/*
	public UserDao getUserDao(){
		JdbcUserDao userDao = new JdbcUserDao();
		DataSource dataSource = createDataSource();
		userDao.setDataSource(dataSource);
		return userDao;
	}
	public AccountDao getAccountDao(){...}
	public MessageDao getMessageDao(){...}
	*/
	
	public Object getDao(String daoFullName){
		Object dao = null;
		dao = daoList.get(daoFullName);
		if(dao != null) return dao;
		/*
		try {
			Class cls = Class.forName(daoFullName);
			// 디폴트 생성자 호출을 통한 Dao 생성(동적 객체 생성)
			dao = cls.newInstance();
			// 생성된 객체에 DataSource 설정(동적 메소드 호출)
			Method method = cls.getMethod("setDataSource", DataSource.class);
			method.invoke(dao, createDataSource());
			// Map에 Dao 저장
			daoList.put(daoFullName, dao);
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
		return dao;
	}
	
	public Object getDao(Class daoType){
		return getDao(daoType.getName());
	}
}