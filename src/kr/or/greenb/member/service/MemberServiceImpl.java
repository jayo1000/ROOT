package kr.or.greenb.member.service;

import java.util.List;

import kr.or.greenb.common.factory.DaoFactory;
import kr.or.greenb.common.factory.JdbcDaoFactory;
import kr.or.greenb.member.dao.JdbcMemberDao;
import kr.or.greenb.member.dao.MemberDao;
import kr.or.greenb.member.domain.Member;

public class MemberServiceImpl implements MemberService{
	
	private MemberDao dao;  // 다른곳이 아닌, 여기에서 컨트롤할수있게 만든다.
	
	private static MemberService userService = new MemberServiceImpl();
	
	private MemberServiceImpl() {
		DaoFactory daofactory = new JdbcDaoFactory();
		dao = (MemberDao)daofactory.getDao(JdbcMemberDao.class);
	}
	
	public static MemberService getInstance(){
		return userService;
	}
	
	@Override
	public void regist(Member member) throws RuntimeException {
		// 기타 비즈니스 처리
		dao.add(member);
	}
	
	@Override
	public boolean isMember(String id, String passwd) throws RuntimeException {
		return dao.isMember(id, passwd);
	}
	
	@Override
	public List<Member> listAll(int greenb_id) throws RuntimeException {	
		return dao.getAll(greenb_id);
	}
	
	@Override
	public List<Member> listAll2() throws RuntimeException {	
		return dao.getAll2();
	}
	
	@Override
	public List<Member> listAll3() throws RuntimeException {	
		return dao.getAll3();
	}
	
	@Override
	public List<Member> listAll4() throws RuntimeException {	
		return dao.getAll4();
	}
	
	@Override
	public List<Member> listAll5() throws RuntimeException {	
		return dao.getAll5();
	}
	
	@Override
	public void updateMember(Member member) throws RuntimeException {
		dao.update(member);
	}

	@Override
	public Member selectMember(int member_num) throws RuntimeException {
		return dao.selectMember(member_num);
	}

	@Override
	public void delete(int member_num) throws RuntimeException {
		dao.delete(member_num);		
	}

	@Override
	public void allupdate(Member member) throws RuntimeException {
		dao.allupdate(member);		
	}

	@Override
	public List<Member> All() throws RuntimeException {
		return dao.All();
	}

	@Override
	public List<Member> planAll(int plan) throws RuntimeException {
		
		return dao.planAll(plan);
	}

	@Override
	public List<Member> searchvalue(String type, String value) throws RuntimeException {
		return dao.searchvalue(type, value);
	}

	@Override
	public List<Member> areasearchvalue(int greenb_id, String type, String value) throws RuntimeException {
		return dao.areasearchvalue(greenb_id, type, value);
	}
	
	

}
