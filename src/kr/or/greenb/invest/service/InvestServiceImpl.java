package kr.or.greenb.invest.service;

import java.util.List;

import kr.or.greenb.common.factory.DaoFactory;
import kr.or.greenb.common.factory.JdbcDaoFactory;
import kr.or.greenb.invest.dao.InvestDao;
import kr.or.greenb.invest.dao.JdbcInvestDao;
import kr.or.greenb.invest.domain.Invest;

public class InvestServiceImpl implements InvestService{
	
	private InvestDao dao;  // 다른곳이 아닌, 여기에서 컨트롤할수있게 만든다.
	
	private static InvestService speedloanService = new InvestServiceImpl();
	
	private InvestServiceImpl() {
		DaoFactory daofactory = new JdbcDaoFactory();
		dao = (InvestDao)daofactory.getDao(JdbcInvestDao.class);
	}
	
	public static InvestService getInstance(){
		return speedloanService;
	}
	
	@Override
	public void Inregist(Invest invest) throws RuntimeException {
		// 기타 비즈니스 처리
		dao.Inadd(invest);
	}
	
	@Override
	public List<Invest> InlistAll() throws RuntimeException {	
		return dao.IngetAll();
	}
	
	@Override
	public List<Invest> Insearch(String name) throws RuntimeException {
		return dao.Insearch("name");
	}
	
	/*public static void Main(String[] args){
		SpeedLoanService speedloan = SpeedLoanServiceImpl.getInstance();
		boolean isMember = speedLoanService.isMember("bangry", "1111");
		System.out.println(isMember);

	}*/
}
