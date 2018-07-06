package kr.or.greenb.user.service;

import java.util.List;

import kr.or.greenb.user.domain.Users;

/*
 * 고객의 요구사항을 반영한 비즈니스 메소드 선언
 * @:임영묵
 * 
 */
public interface UserService {
	
	/** 회원 등록 
	 * @return */
	public void regist(Users user) throws RuntimeException;
	
	/** 회원 인증 */
	public boolean isMember(String id, String passwd) throws RuntimeException;
	
	/** 회원 목록 반환 */
	public List<Users> listAll() throws RuntimeException;
	
	/** 아이디를 이용하여 사용자 조회 */
	public Users myget(String id) throws RuntimeException;
}
