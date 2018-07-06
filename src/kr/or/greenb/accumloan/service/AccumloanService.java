package kr.or.greenb.accumloan.service;

import java.util.List;

import kr.or.greenb.accumloan.domain.Accumloan;

/*
 * 고객의 요구사항을 반영한 비즈니스 메소드 선언
 * @:임영묵
 * 
 */
public interface AccumloanService {
	
	/** 신규 글 등록 */
	public void accumadds(Accumloan Accumloan) throws RuntimeException;
	
	/** 관리자가 임의로 글을 바꾸기 */
	public void accummodifys(Accumloan Accumloan) throws Exception;
	
	/** 메인화면 나오는 뷰 */
	public List<Accumloan> accumAll()  throws RuntimeException;

}
