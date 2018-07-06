package kr.or.greenb.accumloan.service;

import java.util.List;

import kr.or.greenb.accumloan.dao.AccumloanDao;
import kr.or.greenb.accumloan.dao.JdbcAccumloanDao;
import kr.or.greenb.accumloan.domain.Accumloan;
import kr.or.greenb.common.factory.DaoFactory;
import kr.or.greenb.common.factory.JdbcDaoFactory;

public class AccumloanServiceImpl implements AccumloanService{
	
	private AccumloanDao dao;  // 다른곳이 아닌, 여기에서 컨트롤할수있게 만든다.
	
	private static AccumloanService accumloanService = new AccumloanServiceImpl();
	
	private AccumloanServiceImpl() {
		DaoFactory daofactory = new JdbcDaoFactory();
		dao = (AccumloanDao)daofactory.getDao(JdbcAccumloanDao.class);
	}
	
	public static AccumloanService getInstance(){
		return accumloanService;
	}
	
	@Override
	public void accumadds(Accumloan accumloan) throws RuntimeException {
		// 기타 비즈니스 처리
		dao.accumadd(accumloan);
	}
	
	@Override
	public void accummodifys(Accumloan accumloan) throws Exception {
		// 기타 비즈니스 처리
		dao.accummodify(accumloan);
	}
	
	@Override
	public List<Accumloan> accumAll() throws RuntimeException {	
		return dao.getAll();
	}

}
