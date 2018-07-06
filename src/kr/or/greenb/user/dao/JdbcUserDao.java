package kr.or.greenb.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import kr.or.greenb.user.domain.Users;


/**
 * JDBC API를 이용한 사용자 관련 데이터 영속성 처리(CRUD) DAO
 * 
 * @author 임영묵
 */
public class JdbcUserDao implements UsersDao {

	private DataSource dataSource;

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	/** 신규 사용자 등록 */
	public void add(Users Users) throws RuntimeException {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = " INSERT INTO Users(id, passwd, name, email, phonenumber1, phonenumber2, phonenumber3, job)"
				+ " VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Users.getId());
			pstmt.setString(2, Users.getPasswd());
			pstmt.setString(3, Users.getName());
			pstmt.setString(4, Users.getEmail());
			pstmt.setString(5, Users.getPhonenumber1());
			pstmt.setString(6, Users.getPhonenumber2());
			pstmt.setString(7, Users.getPhonenumber3());
			pstmt.setString(8, Users.getJob());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			/*throw new RuntimeException("신규사용자 등록 예외 발생.", e);*/
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
	public Users get(String id) throws RuntimeException {
		Users Users = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " SELECT num,id,name,passwd,email,job,phonenumber1,phonenumber2,phonenumber3,date " + " FROM Users" + " WHERE id=? ";
		System.out.println("get-in1");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			System.out.println("get-in2");
			if (rs.next()) {
				Users = new Users();
				Users.setNum(rs.getInt("num"));
				Users.setId(rs.getString("id"));
				Users.setName(rs.getString("name"));
				Users.setPasswd(rs.getString("passwd"));
				Users.setEmail(rs.getString("email"));
				Users.setJob(rs.getString("job"));
				Users.setPhonenumber1(rs.getString("phonenumber1"));
				Users.setPhonenumber2(rs.getString("phonenumber2"));
				Users.setPhonenumber3(rs.getString("phonenumber3"));
				Users.setDate(rs.getDate("date"));
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
		return Users;
	}
	/** 아이디를 이용하여 사용자 조회 *//*
	public Users get(String id) throws RuntimeException {
		Users Users = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " SELECT number,id,name,passwd,email,job,phonenumber1,phonenumber2,phonenumber3,date " + " FROM Users" + " WHERE id=? ";
		System.out.println("get-in1");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			System.out.println("get-in2");
			System.out.println(id +"get에서의 id값");
			if (rs.next()) {				
				Users = new Users();
				Users.setNumber(rs.getInt("number"));
				Users.setId(rs.getString("id"));
				Users.setName(rs.getString("name"));
				Users.setPasswd(rs.getString("passwd"));
				Users.setEmail(rs.getString("email"));
				Users.setJob(rs.getString("job"));
				Users.setPhonenumber1(rs.getString("phonenumber1"));
				Users.setPhonenumber1(rs.getString("phonenumber2"));
				Users.setPhonenumber1(rs.getString("phonenumber3"));
				Users.setDate(rs.getDate(rs.getInt("date")));
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
		return Users;
	}
*/
	/** 전체 사용자 목록 조회 */
	public List<Users> getAll() throws RuntimeException {
		List<Users> list = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		/*String sql = " SELECT number,id,name,email,job,phonenumber1,phonenumber2,phonenumber3,date" + "FROM Users";*/
		String sql = "select * from Users";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			list = new ArrayList<Users>();
			Users Users = null;
			while (rs.next()) {
				Users = new Users();
				Users.setNum(rs.getInt("num"));
				Users.setId(rs.getString("id"));
				Users.setName(rs.getString("name"));
				Users.setEmail(rs.getString("email"));
				Users.setJob(rs.getString("job"));
				Users.setPhonenumber1(rs.getString("phonenumber1"));
				Users.setPhonenumber2(rs.getString("phonenumber2"));
				Users.setPhonenumber3(rs.getString("phonenumber3"));
				Users.setDate(rs.getDate("date"));
				list.add(Users);
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
	public List<Users> search(String name) throws RuntimeException {
		List<Users> searchList = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT id, name, passwd" + "FROM Users" + "WHERE name LIKE ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + name + "%");
			rs = pstmt.executeQuery();

			searchList = new ArrayList<Users>();
			Users Users = null;
			while (rs.next()) {
				Users = new Users();
				Users.setId(rs.getString("id"));
				Users.setName(rs.getString("name"));
				Users.setPasswd(rs.getString("passwd"));
				searchList.add(Users);
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
	public boolean isMember(String id, String passwd) throws RuntimeException {
		boolean isMember = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " select id, num" + " from Users" + " where id = ? " + "and passwd = ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			isMember = rs.next();
			System.out.println(isMember);
			System.out.println("loginJdbcUsersDao31221");
		} catch (SQLException e) {
			System.out.println("login catch?");
			throw new RuntimeException("회원 로그인 조회 예외 발생", e);
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
