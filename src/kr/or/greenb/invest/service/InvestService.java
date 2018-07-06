package kr.or.greenb.invest.service;

import java.util.List;

import kr.or.greenb.invest.domain.Invest;
import kr.or.greenb.speedLoan.domain.SpeedLoan;

/*
 * 고객의 요구사항을 반영한 비즈니스 메소드 선언
 * @:임영묵
 * 
 */
public interface InvestService {
	
	/** 회원 등록 
	 * @return */
	public void Inregist(Invest invest) throws RuntimeException;
	
	/** 회원 목록 반환 */
	public List<Invest> InlistAll() throws RuntimeException;
	
	/** 이름을 이용하여 사용자 조회 */
	public List<Invest> Insearch(String name) throws RuntimeException;
}
