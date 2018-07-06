package kr.or.greenb.speedLoan.service;

import java.util.List;

import kr.or.greenb.common.factory.DaoFactory;
import kr.or.greenb.common.factory.JdbcDaoFactory;
import kr.or.greenb.speedLoan.dao.JdbcSpeedLoanDao;
import kr.or.greenb.speedLoan.dao.SpeedLoanDao;
import kr.or.greenb.speedLoan.domain.SpeedLoan;

public class SpeedLoanServiceImpl implements SpeedLoanService{
	
	private SpeedLoanDao dao;  // 다른곳이 아닌, 여기에서 컨트롤할수있게 만든다.
	
	private static SpeedLoanService speedloanService = new SpeedLoanServiceImpl();
	
	private SpeedLoanServiceImpl() {
		DaoFactory daofactory = new JdbcDaoFactory();
		dao = (SpeedLoanDao)daofactory.getDao(JdbcSpeedLoanDao.class);
	}
	
	public static SpeedLoanService getInstance(){
		return speedloanService;
	}
	
	@Override
	public void Spregist(SpeedLoan speedloan) throws RuntimeException {
		// 기타 비즈니스 처리
		dao.Spadd(speedloan);
	}
	
	@Override
	public boolean SpisMember(String name, String passwd) throws RuntimeException {
		return dao.SpisMember(name, passwd);
	}
	
	@Override
	public List<SpeedLoan> SplistAll() throws RuntimeException {	
		return dao.SpgetAll();
	}
	
	@Override
	public SpeedLoan Spget(String name) throws RuntimeException {
		return dao.Spget("name");
	}
	
	/*public static void Main(String[] args){
		SpeedLoanService speedloan = SpeedLoanServiceImpl.getInstance();
		boolean isMember = speedLoanService.isMember("bangry", "1111");
		System.out.println(isMember);

	}*/
}
