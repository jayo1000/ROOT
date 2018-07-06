package kr.or.greenb.member.service;

import java.util.List;

import kr.or.greenb.member.domain.Member;

/*
 * 고객의 요구사항을 반영한 비즈니스 메소드 선언
 * @:임영묵
 * 
 */
public interface MemberService {
	
	/**  
	 * @return 명단 추가*/
	public void regist(Member member) throws RuntimeException;
	
	/** 사용자 수정*/
	public void updateMember(Member member) throws RuntimeException;
	
	/** 회원 인증 */
	public boolean isMember(String id, String passwd) throws RuntimeException;
	
	/** 회원 목록 반환 */
	public List<Member> listAll(int greenb_id) throws RuntimeException;
	public List<Member> listAll2() throws RuntimeException;
	public List<Member> listAll3() throws RuntimeException;
	public List<Member> listAll4() throws RuntimeException;
	public List<Member> listAll5() throws RuntimeException;
		
	/** 사용자 정보 확인 */
	public Member selectMember(int member_num) throws RuntimeException;
	
	/** 아이디를 이용하여 사용자 조회 */
	/*public Member myget(String id) throws RuntimeException;*/
	
	/** 맴버 게시물 삭제 */
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
