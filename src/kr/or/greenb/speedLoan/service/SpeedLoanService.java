package kr.or.greenb.speedLoan.service;

import java.util.List;

import kr.or.greenb.speedLoan.domain.SpeedLoan;

/*
 * 고객의 요구사항을 반영한 비즈니스 메소드 선언
 * @:임영묵
 * 
 */
public interface SpeedLoanService {
	
	/** 회원 등록 
	 * @return */
	public void Spregist(SpeedLoan speedloan) throws RuntimeException;
	
	/** 회원 인증 */
	public boolean SpisMember(String name, String passwd) throws RuntimeException;
	
	/** 회원 목록 반환 */
	public List<SpeedLoan> SplistAll() throws RuntimeException;
	
	/** 이름을 이용하여 사용자 조회 */
	public SpeedLoan Spget(String name) throws RuntimeException;
}
