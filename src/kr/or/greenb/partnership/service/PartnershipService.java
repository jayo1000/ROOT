package kr.or.greenb.partnership.service;

import java.util.List;

import kr.or.greenb.partnership.domain.Partnership;

/*
 * 고객의 요구사항을 반영한 비즈니스 메소드 선언
 * @:임영묵
 * 
 */
public interface PartnershipService {
	
	/** 회원 등록 
	 * @return */
	public void regist(Partnership partnership) throws RuntimeException;
	
	/** 회원 인증 */
	public boolean isMember(String partnerid, String passwd) throws RuntimeException;
	
	/** 회원 목록 반환 */
	public List<Partnership> listAll() throws RuntimeException;
	
	/** 아이디를 이용하여 사용자 조회 */
	public Partnership myget(String partnerid) throws RuntimeException;
}
