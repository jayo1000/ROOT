package kr.or.greenb.accumloan.dao;

import java.util.List;

import kr.or.greenb.accumloan.domain.Accumloan;

/**
 * DAO 패턴 적용을 위한 인터페이스
 * 다양한 데이터 액세스 기술(JDBC, JDO, MyBatis, Hibernate 등)을 이용한 DB 처리 로직을
 * 외부에 노출하지 않고, DAO 사용 클라이언트에게는 일관된 메소드(기능) 호출이 가능토록 인터페이스 제공
 * @author 임영묵
 */
public interface AccumloanDao {

	/** 신규 글 등록 */
	public void accumadd(Accumloan Accumloan) throws RuntimeException;
	
	/** 관리자가 임의로 글을 바꾸기 */
	public void accummodify(Accumloan Accumloan) throws Exception;
	
	/** 메인화면 나오는 뷰 */
	public List<Accumloan> getAll()  throws RuntimeException;
	
}








