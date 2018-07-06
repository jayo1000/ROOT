package kr.or.greenb.accumloan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import kr.or.greenb.accumloan.domain.Accumloan;

/**
 * JDBC API를 이용한 사용자 관련 데이터 영속성 처리(CRUD) DAO
 * 
 * @author 임영묵
 */
public class JdbcAccumloanDao implements AccumloanDao {

	private DataSource dataSource;

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	/** 신규 누적 대출액 등록 */
	public void accumadd(Accumloan accumloan) throws RuntimeException {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = " INSERT INTO accumloan(accumloan,accumloan2)"
				+ " VALUES(?, ?)";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, accumloan.getAccumloan());
			pstmt.setInt(2, accumloan.getAccumloan2());
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

	/** 관리자페이지 대출액 수정코드 */
	public void accummodify(Accumloan accumloan) throws RuntimeException {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;

		String sql = " UPDATE accumloan        									"
				+ "    set    accumloan = ?,    								"
				+ "           accumloan2 = ?,                                   ";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, accumloan.getAccumloan());
			pstmt.setInt(2, accumloan.getAccumloan2());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException("게시글 수정 예외 발생", e);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}

	}
	
	/** 전체 사용자 목록 조회 */
	public List<Accumloan> getAll() throws RuntimeException {
		List<Accumloan> list = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT *" + " FROM accumloan";

		System.out.println("list ok1");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<Accumloan>();
			Accumloan accumloan = null;
			System.out.println("list ok2");
			while (rs.next()) {
				accumloan = new Accumloan();
				accumloan.setAccumloan(rs.getInt("accumloan"));
				accumloan.setAccumloan2(rs.getInt("accumloan2"));
				list.add(accumloan);
				System.out.println("list ok3");
			}
		} catch (SQLException e) {
			System.out.println("list catch");
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
}
