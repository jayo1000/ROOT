package kr.or.greenb.user.service;

import java.util.List;

import kr.or.greenb.common.factory.DaoFactory;
import kr.or.greenb.common.factory.JdbcDaoFactory;
import kr.or.greenb.user.dao.JdbcUserDao;
import kr.or.greenb.user.dao.UsersDao;
import kr.or.greenb.user.domain.Users;

public class UserServiceImpl implements UserService{
	
	private UsersDao dao;  // 다른곳이 아닌, 여기에서 컨트롤할수있게 만든다.
	
	private static UserService userService = new UserServiceImpl();
	
	private UserServiceImpl() {
		DaoFactory daofactory = new JdbcDaoFactory();
		dao = (UsersDao)daofactory.getDao(JdbcUserDao.class);
	}
	
	public static UserService getInstance(){
		return userService;
	}
	
	@Override
	public void regist(Users user) throws RuntimeException {
		// 기타 비즈니스 처리
		dao.add(user);
	}
	
	@Override
	public boolean isMember(String id, String passwd) throws RuntimeException {
		return dao.isMember(id, passwd);
	}
	
	@Override
	public List<Users> listAll() throws RuntimeException {	
		return dao.getAll();
	}
	
	@Override
	public Users myget(String id) throws RuntimeException {
		return dao.get(id);
	}
	
	public static void Main(String[] args){
		UserService user = UserServiceImpl.getInstance();
		boolean isMember = userService.isMember("bangry", "1111");
		System.out.println(isMember);

	}

}
