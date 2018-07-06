package kr.or.greenb.common.factory;
import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;



/**
 * 서브팩토리클래스에서 다양한 기술을 사용하는 다양한 종류의 DAO 생성이 가능토록 추상팩토리클래스 정의 
 * Dao 생성 창구 단일화
 */
public abstract class DaoFactory {
	
/*	private static final String DRIVER = "org.gjt.mm.mysql.Driver";
	private static final String URL = "jdbc:mysql://eventpartner.cafe24.com:3306/eventpartner";
	private static final String USER = "eventpartner";
	private static final String PASSWD = "dnehd01**";*/
	
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private static final String USER = "hr";
	private static final String PASSWD = "hr";
	
	private DataSource dataSource;
	
	public DataSource createDataSource(){
		if(dataSource == null){
			BasicDataSource basicDataSource = new BasicDataSource();
			basicDataSource.setDriverClassName(DRIVER);
			basicDataSource.setUrl(URL);
			basicDataSource.setUsername(USER);
			basicDataSource.setPassword(PASSWD);
			
			basicDataSource.setInitialSize(2);      // 풀의 초기 커넥션 개수(10)
			basicDataSource.setMaxTotal(4);         // 최대 커넥션 갯수(100) 
			basicDataSource.setMaxIdle(2);          // Idle 상태에 풀이 소유한 최대 커넥션 개수(10) 
			basicDataSource.setMaxWaitMillis(1000); // 커넥션이 존재하지 않을 때 커넥션 획득에 대기할 시간
			dataSource = basicDataSource;
		}
		return dataSource;
	}
	
//	public abstract UserDao getUserDao();
//	public abstract AccountDao getAccountDao();
//	public abstract MessageDao getMessageDao();
	
	public abstract Object getDao(String daoFullName);
	public abstract Object getDao(Class daoType);	
}
