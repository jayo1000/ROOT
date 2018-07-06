package kr.or.greenb.partnership.service;

import java.util.List;

import kr.or.greenb.common.factory.DaoFactory;
import kr.or.greenb.common.factory.JdbcDaoFactory;
import kr.or.greenb.partnership.dao.JdbcPartnershipDao;
import kr.or.greenb.partnership.dao.PartnershipDao;
import kr.or.greenb.partnership.domain.Partnership;

public class PartnershipServiceImpl implements PartnershipService{
	
	private PartnershipDao dao;  // 다른곳이 아닌, 여기에서 컨트롤할수있게 만든다.
	
	private static PartnershipService partnershipService = new PartnershipServiceImpl();
	
	private PartnershipServiceImpl() {
		DaoFactory daofactory = new JdbcDaoFactory();
		dao = (PartnershipDao)daofactory.getDao(JdbcPartnershipDao.class);
	}
	
	public static PartnershipService getInstance(){
		return partnershipService;
	}
	
	@Override
	public void regist(Partnership partnership) throws RuntimeException {
		// 기타 비즈니스 처리
		dao.add(partnership);
	}
	
	@Override
	public boolean isMember(String partnerid, String passwd) throws RuntimeException {
		return dao.isMember(partnerid, passwd);
	}
	
	@Override
	public List<Partnership> listAll() throws RuntimeException {	
		return dao.getAll();
	}
	
	@Override
	public Partnership myget(String partnerid) throws RuntimeException {
		return dao.get(partnerid);
	}
	
	public static void Main(String[] args){
		PartnershipService partnershipService = PartnershipServiceImpl.getInstance();
		boolean isMember = partnershipService.isMember("bangry", "1111");
		System.out.println(isMember);
	}

}
