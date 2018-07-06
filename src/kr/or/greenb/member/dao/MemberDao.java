package kr.or.greenb.member.dao;

import java.util.List;

import kr.or.greenb.member.domain.Member;

/**
 * DAO 패턴 적용을 위한 인터페이스
 * 다양한 데이터 액세스 기술(JDBC, JDO, MyBatis, Hibernate 등)을 이용한 DB 처리 로직을
 * 외부에 노출하지 않고, DAO 사용 클라이언트에게는 일관된 메소드(기능) 호출이 가능토록 인터페이스 제공
 * @author 임영묵
 */
public interface MemberDao {

	/** 신규 사용자 등록 */
	public void add(Member member) throws RuntimeException;
	
	/** 사용자 수정 */
	public void update(Member member) throws RuntimeException;
	
	/** 사용자 정보 확인 */
	public Member selectMember(int member_num) throws RuntimeException;
	
	/** 전체 사용자 목록 조회 */
	public List<Member> getAll(int greenb_id)  throws RuntimeException;
	public List<Member> getAll2() throws RuntimeException;
	public List<Member> getAll3() throws RuntimeException;
	public List<Member> getAll4() throws RuntimeException;
	public List<Member> getAll5() throws RuntimeException;
	
	/** 이름을 이용하여 사용자 검색 */
	public List<Member> search(String name) throws RuntimeException;
	
	/** 회원 여부 조회(로그인시 사용가능) */
	public boolean isMember(String id, String passwd) throws RuntimeException;
	
	/** 맴버정보 삭제 */
	public void delete(int member_num) throws RuntimeException;
		
	/** 전체 유저 값 증가하기 */
	public void allupdate(Member member) throws RuntimeException;
	
	/** 전체 유저 정보 가져오기 */
	public List<Member> All() throws RuntimeException;
	
	/** 플랜별 정보 가져오기 */
	public List<Member> planAll(int plan) throws RuntimeException;	
	
	/** 전체 검색처리 */
	public List<Member> searchvalue(String type, String value) throws RuntimeException;
	
	/** 지역별 검색 처리 */
	public List<Member> areasearchvalue(int greenb_id, String type, String value) throws RuntimeException;
}








