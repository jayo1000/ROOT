package kr.or.greenb.user.dao;

import java.util.List;

import kr.or.greenb.user.domain.Users;

/**
 * DAO 패턴 적용을 위한 인터페이스
 * 다양한 데이터 액세스 기술(JDBC, JDO, MyBatis, Hibernate 등)을 이용한 DB 처리 로직을
 * 외부에 노출하지 않고, DAO 사용 클라이언트에게는 일관된 메소드(기능) 호출이 가능토록 인터페이스 제공
 * @author 임영묵
 */
public interface UsersDao {

	/** 신규 사용자 등록 */
	public void add(Users user) throws RuntimeException;
	
	/** 아이디를 이용하여 사용자 조회 */
	public Users get(String id) throws RuntimeException;
	
	/** 전체 사용자 목록 조회 */
	public List<Users> getAll()  throws RuntimeException;
	
	/** 이름을 이용하여 사용자 검색 */
	public List<Users> search(String name) throws RuntimeException;
	
	/** 회원 여부 조회(로그인시 사용가능) */
	public boolean isMember(String id, String passwd) throws RuntimeException;
	
}








