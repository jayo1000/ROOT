package kr.or.greenb.speedLoan.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import kr.or.greenb.speedLoan.domain.SpeedLoan;

/**
 * JDBC API를 이용한 빠른대출 상담 회원 관련 데이터 영속성 처리(CRUD) DAO
 * 
 * @author 임영묵
 */
public class JdbcSpeedLoanDao implements SpeedLoanDao {

	private DataSource dataSource;

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	/** 신규 사용자 등록 */
	public void Spadd(SpeedLoan speedloan) throws RuntimeException {
		System.out.println("come1");
		Connection con = null;
		System.out.println("come2");
		PreparedStatement pstmt = null;
		System.out.println("come3");
		String sql = "insert into speedloan(name, phonenumber1, phonenumber2, phonenumber3, requestmoney, ip)"
				+ "values(?, ?, ?, ?, ?, ?)";
		System.out.println("come4");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			System.out.println("try come5");
			pstmt.setString(1, speedloan.getName());
			System.out.println("try come6");
			pstmt.setString(2, speedloan.getPhonenumber1());
			System.out.println("try come7");
			pstmt.setString(3, speedloan.getPhonenumber2());
			System.out.println("try come8");
			pstmt.setString(4, speedloan.getPhonenumber3());
			System.out.println("try come9");
			pstmt.setString(5, speedloan.getRequestmoney());
			System.out.println("try come10");
			pstmt.setString(6, speedloan.getIp());
			pstmt.executeUpdate();
			System.out.println("try come2");
		} catch (SQLException e) {
			System.out.println("catch come3");
			throw new RuntimeException("신규사용자 등록 예외 발생.", e);
			/*e.printStackTrace();  :: 오류확인시에만 */
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
			}
		}
	}

	/** 이름을 이용하여 사용자 조회 */
	public SpeedLoan Spget(String name) throws RuntimeException {
		SpeedLoan speedloan = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " select id, name, passwd" + " FROM users" + " WHERE id = ?";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				speedloan = new SpeedLoan();
				speedloan.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			throw new RuntimeException("아이디로 사용자 조회 예외 발생", e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
			}
		}
		return speedloan;
	}

	/** 전체 사용자 목록 조회 */
	public List<SpeedLoan> SpgetAll() throws RuntimeException {
		List<SpeedLoan> list = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		/*String sql = "SELECT number, name, phonenumber1, phonenumber2, phonenumber3, requestmoney, regdate" + "FROM speedloan";*/
		String sql = "select * from speedloan";
		
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			list = new ArrayList<SpeedLoan>();
			SpeedLoan speedloan = null;
			while (rs.next()) {
				speedloan = new SpeedLoan();
				speedloan.setNumber(rs.getInt("number"));
				speedloan.setName(rs.getString("name"));
				speedloan.setPhonenumber1(rs.getString("phonenumber1"));
				speedloan.setPhonenumber2(rs.getString("phonenumber2"));
				speedloan.setPhonenumber3(rs.getString("phonenumber3"));
				speedloan.setRequestmoney(rs.getString("requestmoney"));
				speedloan.setRegdate(rs.getDate("regdate"));
				list.add(speedloan);
			}
		} catch (SQLException e) {
			throw new RuntimeException("전체 사용자 조회 예외 발생", e);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		return list;
	}

	/** 이름을 이용하여 사용자 검색 */
	public List<SpeedLoan> Spsearch(String name) throws RuntimeException {
		List<SpeedLoan> searchList = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT id, name, passwd" + " FROM   users" + " WHERE  name LIKE ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + name + "%");
			rs = pstmt.executeQuery();

			searchList = new ArrayList<SpeedLoan>();
			SpeedLoan user = null;
			while (rs.next()) {
				user = new SpeedLoan();
				user.setName(rs.getString("name"));
				searchList.add(user);
			}
		} catch (SQLException e) {
			throw new RuntimeException("전체 사용자 조회 예외 발생", e);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		return searchList;
	}

	/** 회원 여부 조회 */
	public boolean SpisMember(String id, String passwd) throws RuntimeException {
		boolean isMember = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT id" + " FROM   users" + " WHERE  id = ? " + "        AND passwd = ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			isMember = rs.next();
			System.out.println("31221");
		} catch (SQLException e) {
			throw new RuntimeException("회원 여부 조회 예외 발생", e);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		return isMember;
	}

}
