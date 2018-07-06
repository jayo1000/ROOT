package kr.or.greenb.invest.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import kr.or.greenb.invest.domain.Invest;
import kr.or.greenb.speedLoan.domain.SpeedLoan;

/**
 * JDBC API를 이용한 빠른대출 상담 회원 관련 데이터 영속성 처리(CRUD) DAO
 * 
 * @author 임영묵
 */
public class JdbcInvestDao implements InvestDao {

	private DataSource dataSource;

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	/** 신규 사용자 등록 */
	public void Inadd(Invest invest) throws RuntimeException {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into invest(name, email, phonenumber, wanted, ip)"
				+ "values(?, ?, ?, ?, ?)";
		System.out.println("come4");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, invest.getName());
			pstmt.setString(2, invest.getEmail());
			pstmt.setString(3, invest.getPhonenumber());
			pstmt.setString(4, invest.getWanted());
			pstmt.setString(5, invest.getIp());		
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

	/** 전체 사용자 목록 조회 */
	public List<Invest> IngetAll() throws RuntimeException {
		List<Invest> list = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT number, name, email, phonenumber, wanted" + " FROM invest"; 

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			list = new ArrayList<Invest>();
			Invest invest = null;
			while (rs.next()) {
				invest = new Invest();
				invest.setNumber(rs.getInt("number"));
				invest.setName(rs.getString("name"));
				invest.setPhonenumber(rs.getString("phonenumber"));
				invest.setEmail(rs.getString("email"));
				invest.setWanted(rs.getString("wanted"));
				list.add(invest);
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
	public List<Invest> Insearch(String name) throws RuntimeException {
		List<Invest> searchList = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT name, email, phonenumber" + " FROM   Invest" + " WHERE  name LIKE ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + name + "%");
			rs = pstmt.executeQuery();

			searchList = new ArrayList<Invest>();
			Invest user = null;
			while (rs.next()) {
				user = new Invest();
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
