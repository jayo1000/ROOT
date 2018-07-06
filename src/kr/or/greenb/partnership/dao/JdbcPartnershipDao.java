package kr.or.greenb.partnership.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import kr.or.greenb.partnership.domain.Partnership;

/**
 * JDBC API를 이용한 사용자 관련 데이터 영속성 처리(CRUD) DAO
 * 
 * @author 임영묵
 */
public class JdbcPartnershipDao implements PartnershipDao {

	private DataSource dataSource;

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	/** 신규 사용자 등록 */
	public void add(Partnership partnership) throws RuntimeException {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO partnership(partnerid, passwd, name, area)"
				+ "VALUES(?, ?, ?, ?)";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, partnership.getPartnerid());
			pstmt.setString(2, partnership.getPasswd());
			pstmt.setString(3, partnership.getName());
			pstmt.setString(4, partnership.getArea());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException("신규사용자 등록 예외 발생.", e);
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

	/** 아이디를 이용하여 사용자 조회 */
	@Override
	public Partnership get(String partnerid) throws RuntimeException {
		Partnership partnership = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " SELECT * " + " FROM partnership" + " WHERE partnerid=? ";
		System.out.println("get-in1");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, partnerid);
			rs = pstmt.executeQuery();
			System.out.println("get-in2");
			if (rs.next()) {
				partnership = new Partnership();
				partnership.setPartnerid(rs.getString("partnerid"));
				partnership.setName(rs.getString("name"));
				partnership.setPasswd(rs.getString("passwd"));
				partnership.setArea(rs.getString("area"));
				System.out.println("get-in4");
			}
		} catch (SQLException e) {
			System.out.println("get-catch");
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
		return partnership;
	}
	/** 아이디를 이용하여 사용자 조회 *//*
	public User get(String id) throws RuntimeException {
		User user = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " SELECT number,id,name,passwd,email,job,phonenumber1,phonenumber2,phonenumber3,date " + " FROM user" + " WHERE id=? ";
		System.out.println("get-in1");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			System.out.println("get-in2");
			System.out.println(id +"get에서의 id값");
			if (rs.next()) {				
				user = new User();
				user.setNumber(rs.getInt("number"));
				user.setId(rs.getString("id"));
				user.setName(rs.getString("name"));
				user.setPasswd(rs.getString("passwd"));
				user.setEmail(rs.getString("email"));
				user.setJob(rs.getString("job"));
				user.setPhonenumber1(rs.getString("phonenumber1"));
				user.setPhonenumber1(rs.getString("phonenumber2"));
				user.setPhonenumber1(rs.getString("phonenumber3"));
				user.setDate(rs.getDate(rs.getInt("date")));
			}
		} catch (SQLException e) {
			System.out.println("get-catch");
			throw new RuntimeException("아이디로 사용자 조회 예외 발생", e);
		} finally {
			System.out.println("get-in3");
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
		return user;
	}
*/
	/** 전체 사용자 목록 조회 */
	public List<Partnership> getAll() throws RuntimeException {
		List<Partnership> list = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		/*String sql = " SELECT number,id,name,email,job,phonenumber1,phonenumber2,phonenumber3,date" + "FROM user";*/
		String sql = "select * from partnership";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			list = new ArrayList<Partnership>();
			Partnership partnership = null;
			while (rs.next()) {
				partnership = new Partnership();
				partnership.setPartnerid(rs.getString("partnerid"));
				partnership.setName(rs.getString("name"));
				partnership.setArea(rs.getString("area"));
				list.add(partnership);
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
	public List<Partnership> search(String name) throws RuntimeException {
		List<Partnership> searchList = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT id, name, passwd" + "FROM user" + "WHERE name LIKE ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + name + "%");
			rs = pstmt.executeQuery();

			searchList = new ArrayList<Partnership>();
			Partnership partnership = null;
			while (rs.next()) {
				partnership = new Partnership();
				partnership.setPartnerid(rs.getString("partnerid"));
				partnership.setName(rs.getString("name"));
				partnership.setPasswd(rs.getString("passwd"));
				partnership.setArea(rs.getString("area"));
				searchList.add(partnership);
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

	/** 회원 여부 조회(로그인시 사용가능) */
	public boolean isMember(String partnerid, String passwd) throws RuntimeException {
		boolean isMember = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " select partnerid, name, area" + " from partnership" + " where partnerid = ? " + "and passwd = ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, partnerid);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			isMember = rs.next();
			System.out.println(isMember);
		} catch (SQLException e) {
			System.out.println("login catch?");
			throw new RuntimeException("아이디와 비밀번호를 확인해주세요.", e);
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
