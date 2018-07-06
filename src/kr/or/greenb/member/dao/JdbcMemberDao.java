package kr.or.greenb.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import kr.or.greenb.member.domain.Member;

/**
 * JDBC API를 이용한 사용자 관련 데이터 영속성 처리(CRUD) DAO
 * 
 * @author 임영묵
 */
public class JdbcMemberDao implements MemberDao {

	private DataSource dataSource;

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	/** 신규 사용자 등록 */
	public void add(Member member) throws RuntimeException {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = " INSERT INTO member(greenb_id,name,beginday,deposit,bank,banknumber,accountname,other,plan,introduce,endday,totalmoney,totalnumber,givenumber,onedaymoney,givemoney,balance,address1,address2,address3,address4)"
				+ " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, member.getGreenb_id());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getBeginday());
			pstmt.setString(4, member.getDeposit());
			pstmt.setString(5, member.getBank());
			pstmt.setString(6, member.getBanknumber());
			pstmt.setString(7, member.getAccountname());
			pstmt.setString(8, member.getOther());
			pstmt.setInt(9, member.getPlan());
			pstmt.setString(10, member.getIntroduce());
			pstmt.setString(11, member.getEndday());
			pstmt.setString(12, member.getTotalmoney());
			pstmt.setString(13, member.getTotalnumber());
			pstmt.setString(14, member.getGivenumber());
			pstmt.setString(15, member.getOnedaymoney());
			pstmt.setString(16, member.getGivemoney());
			pstmt.setString(17, member.getBalance());
			pstmt.setString(18, member.getAddress1());
			pstmt.setString(19, member.getAddress2());
			pstmt.setString(20, member.getAddress3());
			pstmt.setString(21, member.getAddress4());
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
	
	/** 전체 사용자 목록 조회 */
	public List<Member> All() throws RuntimeException {
		List<Member> list = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member member = null;
		
		/*String sql = " SELECT number,id,name,email,job,phonenumber1,phonenumber2,phonenumber3,date" + "FROM user";*/
		String sql = " SELECT * " + 
				" FROM member" +
				" ORDER BY member_num ASC ";
		System.out.println("list-one");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			list = new ArrayList<Member>();
			System.out.println("list-two");
			while (rs.next()) {
				member = new Member();
				member.setGreenb_id(rs.getInt("greenb_id"));
				member.setMember_num(rs.getInt("member_num"));
				member.setName(rs.getString("name"));
				member.setBeginday(rs.getString("beginday"));
				member.setDeposit(rs.getString("deposit"));
				member.setBank(rs.getString("bank"));
				member.setBanknumber(rs.getString("banknumber"));
				member.setAccountname(rs.getString("accountname"));
				member.setOther(rs.getString("other"));
				member.setPlan(rs.getInt("plan"));
				member.setIntroduce(rs.getString("introduce"));
				member.setEndday(rs.getString("endday"));
				member.setTotalmoney(rs.getString("totalmoney"));
				member.setTotalnumber(rs.getString("totalnumber"));
				member.setGivenumber(rs.getString("givenumber"));
				member.setOnedaymoney(rs.getString("onedaymoney"));
				member.setGivemoney(rs.getString("givemoney"));
				member.setBalance(rs.getString("balance"));
				list.add(member);
				System.out.println("list-three");
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
	
	/** 인천 전체 사용자 목록 조회 */
	public List<Member> getAll(int greenb_id) throws RuntimeException {
		List<Member> list = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member member = null;
		
		/*String sql = " SELECT number,id,name,email,job,phonenumber1,phonenumber2,phonenumber3,date" + "FROM user";*/
		String sql = " SELECT * " + 
				" FROM member" + 
				" WHERE greenb_id=?" +
				" ORDER BY member_num ASC ";
		System.out.println("list-one");
		System.out.println(greenb_id);
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);	
			pstmt.setInt(1, greenb_id);
			rs = pstmt.executeQuery();
			
			list = new ArrayList<Member>();
			System.out.println("list-two");
			while (rs.next()) {
				member = new Member();
				member.setGreenb_id(rs.getInt("greenb_id"));
				member.setMember_num(rs.getInt("member_num"));
				member.setName(rs.getString("name"));
				member.setBeginday(rs.getString("beginday"));
				member.setDeposit(rs.getString("deposit"));
				member.setBank(rs.getString("bank"));
				member.setBanknumber(rs.getString("banknumber"));
				member.setAccountname(rs.getString("accountname"));
				member.setOther(rs.getString("other"));
				member.setPlan(rs.getInt("plan"));
				member.setIntroduce(rs.getString("introduce"));
				member.setEndday(rs.getString("endday"));
				member.setTotalmoney(rs.getString("totalmoney"));
				member.setTotalnumber(rs.getString("totalnumber"));
				member.setGivenumber(rs.getString("givenumber"));
				member.setOnedaymoney(rs.getString("onedaymoney"));
				member.setGivemoney(rs.getString("givemoney"));
				member.setBalance(rs.getString("balance"));
				list.add(member);
				System.out.println("list-three");
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
	
	/** 게시글 수정 */
	@Override
	public void update(Member member) throws RuntimeException {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;

		String sql = " UPDATE member        									"
				+ "    set    member_num = ?,    									"
				+ "    		  greenb_id = ?,    									"
				+ "    		  name = ?,    									"
				+ "           beginday = ?,                                      "
				+ "           deposit = ?,                                            "
				+ "           bank = ?,                                            "
				+ "           banknumber = ?,                                            "
				+ "           accountname = ?,                                            "
				+ "           other = ?,                                            "
				+ "           introduce = ?,                                            "
				+ "           endday = ?,                                            "
				+ "				plan = ?, 							 		"				
				+ "           totalmoney = ?,                                            "
				+ "           totalnumber = ?,                                            "
				+ "           givenumber = ?,                                            "
				+ "           onedaymoney = ?,                                            "
				+ "           givemoney = ?,                                            "
				+ "           balance = ?,                                            "
				+ "           address1 = ?,                                           "
				+ "           address2 = ?,                                            "
				+ "           address3 = ?,                                            "
				+ "           address4 = ?                                            "
				+ "    WHERE  member_num = ?                                    ";
		System.out.println("update1");
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, member.getMember_num());
			pstmt.setInt(2, member.getGreenb_id());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getBeginday());
			pstmt.setString(5, member.getDeposit());
			pstmt.setString(6, member.getBank());			
			pstmt.setString(7, member.getBanknumber());
			pstmt.setString(8, member.getAccountname());
			pstmt.setString(9, member.getOther());
			pstmt.setString(10, member.getIntroduce());
			pstmt.setString(11, member.getEndday());
			pstmt.setInt(12, member.getPlan());
			pstmt.setString(13, member.getTotalmoney());
			pstmt.setString(14, member.getTotalnumber());
			pstmt.setString(15, member.getGivenumber());
			pstmt.setString(16, member.getOnedaymoney());
			pstmt.setString(17, member.getGivemoney());
			pstmt.setString(18, member.getBalance());
			pstmt.setString(19, member.getAddress1());
			pstmt.setString(20, member.getAddress2());
			pstmt.setString(21, member.getAddress3());
			pstmt.setString(22, member.getAddress4());
			pstmt.setInt(23, member.getMember_num());
			pstmt.executeUpdate();
			System.out.println("update2");
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
	
	/** 게시글 전체카운트 증가와 값 변경 */
	@Override
	public void allupdate(Member member) throws RuntimeException {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;

		String sql = " UPDATE member        									   "
				+ "    set    givenumber =(givenumber+1),                          "
				+ "           givemoney =(onedaymoney*givenumber),                 "
				+ "           balance =(totalmoney-givemoney)                      "
				+ "    WHERE greenb_id= ?                     ";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, member.getGreenb_id());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException("게시글 전체 수정 예외 발생", e);
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
	
	/** 게시글 읽기 */
	@Override
	public Member selectMember(int member_num) throws RuntimeException {
		// TODO Auto-generated method stub
		Member member = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " 	SELECT 	member_num, 					 					"
				+ "			   	greenb_id, name, 					 		"
				+ "			   	beginday, 										"
				+ "			   	deposit, "
				+ "    			bank, 											"
				+ "				banknumber, 								 		"
				+ "				accountname, 										"
				+ "				other, 										"
				+ "				introduce, 							 		"
				+ "				plan, 							 		"
				+ "				endday,								 		"
				+ "				totalmoney,                                		"
				+ "				totalnumber,                                 		"
				+ "				givenumber,                                 		"
				+ "				onedaymoney,                                 		"
				+ "				givemoney,                                 		"
				+ "				balance,                                 		"
				+ "				address1,                                 		"
				+ "				address2,                                 		"
				+ "				address3,                                 		"
				+ "				address4                                 		"
				+ "	    FROM   	member                      					"
				+ "	    WHERE  	member_num = ?             					";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, member_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				member = new Member();
				member.setMember_num(rs.getInt("member_num"));
				member.setGreenb_id(rs.getInt("greenb_id"));
				member.setName(rs.getString("name"));
				member.setBeginday(rs.getString("beginday"));
				member.setDeposit(rs.getString("deposit"));
				member.setBank(rs.getString("bank"));
				member.setBanknumber(rs.getString("banknumber"));
				member.setAccountname(rs.getString("accountname"));
				member.setOther(rs.getString("other"));
				member.setPlan(rs.getInt("plan"));
				member.setIntroduce(rs.getString("introduce"));
				member.setEndday(rs.getString("endday"));
				member.setTotalmoney(rs.getString("totalmoney"));
				member.setTotalnumber(rs.getString("totalnumber"));
				member.setGivenumber(rs.getString("givenumber"));
				member.setOnedaymoney(rs.getString("onedaymoney"));
				member.setGivemoney(rs.getString("givemoney"));
				member.setBalance(rs.getString("balance"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setAddress3(rs.getString("address3"));
				member.setAddress4(rs.getString("address4"));
			}
		} catch (SQLException e) {
			throw new RuntimeException("게시글번호로 게시글 조회 예외 발생", e);
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
		return member;
	}
	
	public List<Member> planAll(int plan) throws RuntimeException {
		List<Member> list = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member member = null;
		
		/*String sql = " SELECT number,id,name,email,job,phonenumber1,phonenumber2,phonenumber3,date" + "FROM user";*/
		String sql = " SELECT * " + 
				" FROM member" + 
				" WHERE plan=?" +
				" ORDER BY member_num ASC ";
		System.out.println("list-one");
		System.out.println(plan);
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);	
			pstmt.setInt(1, plan);
			rs = pstmt.executeQuery();
			
			list = new ArrayList<Member>();
			System.out.println("list-two");
			while (rs.next()) {
				member = new Member();
				member.setGreenb_id(rs.getInt("greenb_id"));
				member.setMember_num(rs.getInt("member_num"));
				member.setName(rs.getString("name"));
				member.setBeginday(rs.getString("beginday"));
				member.setDeposit(rs.getString("deposit"));
				member.setBank(rs.getString("bank"));
				member.setBanknumber(rs.getString("banknumber"));
				member.setAccountname(rs.getString("accountname"));
				member.setOther(rs.getString("other"));
				member.setPlan(rs.getInt("plan"));
				member.setIntroduce(rs.getString("introduce"));
				member.setEndday(rs.getString("endday"));
				member.setTotalmoney(rs.getString("totalmoney"));
				member.setTotalnumber(rs.getString("totalnumber"));
				member.setGivenumber(rs.getString("givenumber"));
				member.setOnedaymoney(rs.getString("onedaymoney"));
				member.setGivemoney(rs.getString("givemoney"));
				member.setBalance(rs.getString("balance"));
				list.add(member);
				System.out.println("list-three");
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

	//** 게시글 삭제 *//
	@Override
/*	public int deleteArticle(Article article) throws RuntimeException {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;

		String sql = " DELETE        									        "
				+ "    FROM   article                                           "
				+ "    WHERE  article_id = ?                                    "
				+ "           AND writer = ?                                    "
				+ "           AND passwd = ?                                    ";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, article.getArticle_id());
			pstmt.setString(2, article.getWriter());
			pstmt.setString(3, article.getPasswd());
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException("게시글 삭제 예외 발생", e);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}

		return result;
	}*/
	
	
	/** 이름을 이용하여 사용자 검색 */
	public List<Member> search(String name) throws RuntimeException {
		List<Member> searchList = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT id, name, passwd" + "FROM user" + "WHERE name LIKE ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + name + "%");
			rs = pstmt.executeQuery();

			searchList = new ArrayList<Member>();
			Member member = null;
			while (rs.next()) {
				member = new Member();
				member.setGreenb_id(rs.getInt("greenb_id"));
				member.setName(rs.getString("name"));
				member.setEndday(rs.getString("endday"));
				searchList.add(member);
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
		String sql = " select id, number" + " from user" + " where id = ? " + "and passwd = ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			isMember = rs.next();
			System.out.println(isMember);
			System.out.println("loginJdbcUserDao31221");
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
	
	/** 맴버정보 삭제 */
	@Override
	public void delete(int member_num) throws RuntimeException {
		Connection con = null;
		PreparedStatement pstmt = null;		
		String sql= "delete from member "+ 
					"where member_num= ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, member_num);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException("삭제 예외 발생", e);
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
	
		//  전체 검색처리
		public List<Member> searchvalue(String type, String value) throws RuntimeException {
	          List<Member> list = null;
	            
	            Connection con = null;
	            PreparedStatement pstmt = null;
	            ResultSet rs = null;
	            String sql = " SELECT *" +
	                      " FROM member";
	                      if(type.equals("member_num")){
	                         sql += " where member_num LIKE '?'";
	                         System.out.println("member_num select-0");
	                      }else if(type.equals("name")){
	                         sql += " where name LIKE ?";
	                         System.out.println("name select-0");
	                      }else if(type.equals("endday")){
	                         sql += " where endday LIKE ?";
	                         System.out.println("endday select-0");
	                      }else if(type.equals("introduce")){
		                         sql += " where introduce LIKE ?";
		                         System.out.println("introduce select-0");
		                  }
	                         System.out.println("select-0");
	                         try {
	                          con = dataSource.getConnection();
	                          pstmt = con.prepareStatement(sql);
	                          pstmt.setString(1, "%"+value+"%");
	                          rs = pstmt.executeQuery();
	                          System.out.println("select-1");
	                          
	                          list = new ArrayList<Member>();
	                          Member member = null;
	                          while(rs.next()){
	                        	member = new Member();
	              				member.setMember_num(rs.getInt("member_num"));
	              				member.setGreenb_id(rs.getInt("greenb_id"));
	              				member.setName(rs.getString("name"));
	              				member.setBeginday(rs.getString("beginday"));
	              				member.setDeposit(rs.getString("deposit"));
	              				member.setBank(rs.getString("bank"));
	              				member.setBanknumber(rs.getString("banknumber"));
	              				member.setAccountname(rs.getString("accountname"));
	              				member.setOther(rs.getString("other"));
	              				member.setPlan(rs.getInt("plan"));
	              				member.setIntroduce(rs.getString("introduce"));
	              				member.setEndday(rs.getString("endday"));
	              				member.setTotalmoney(rs.getString("totalmoney"));
	              				member.setTotalnumber(rs.getString("totalnumber"));
	              				member.setGivenumber(rs.getString("givenumber"));
	              				member.setOnedaymoney(rs.getString("onedaymoney"));
	              				member.setGivemoney(rs.getString("givemoney"));
	              				member.setBalance(rs.getString("balance"));
	              				member.setAddress1(rs.getString("address1"));
	              				member.setAddress2(rs.getString("address2"));
	              				member.setAddress3(rs.getString("address3"));
	              				member.setAddress4(rs.getString("address4"));
	                             list.add(member);
	                             System.out.println("select-2");
	                          }
	                       } catch (SQLException e) {
	                          throw new RuntimeException("게시글 검색 예외 발생", e);
	                       } finally {
	                          try{
	                             if(rs != null){rs.close();}
	                             if(pstmt != null){pstmt.close();}
	                             if(con != null){con.close();}
	                          }catch (Exception e){}
	                       }
	                       return  list;
	                     }
		
		//  지역별 검색 처리
			public List<Member> areasearchvalue(int greenb_id, String type, String value) throws RuntimeException {
		          List<Member> list = null;
		            
		            Connection con = null;
		            PreparedStatement pstmt = null;
		            ResultSet rs = null;
		            String sql = " SELECT *" +
		                      " FROM member" +
		            		" where greenb_id = ? ";
		                      if(type.equals("member_num")){
		                         sql += " and member_num LIKE '?'";
		                         System.out.println("member_num select-0");
		                      }else if(type.equals("name")){
		                         sql += " and name LIKE ?";
		                         System.out.println("name select-0");
		                      }else if(type.equals("endday")){
		                         sql += " and endday LIKE ?";
		                         System.out.println("beginday select-0");
		                      }else if(type.equals("introduce")){
			                         sql += " and introduce LIKE ?";
			                         System.out.println("introduce select-0");
			                  }
		                         System.out.println("select-0");
		                         try {
		                          con = dataSource.getConnection();
		                          pstmt = con.prepareStatement(sql);
		                          pstmt.setInt(1, greenb_id);
		                          pstmt.setString(2, "%"+value+"%");
		                          rs = pstmt.executeQuery();
		                          System.out.println("select-1");
		                          
		                          list = new ArrayList<Member>();
		                          Member member = null;
		                          while(rs.next()){
		                        	member = new Member();
		              				member.setMember_num(rs.getInt("member_num"));
		              				member.setGreenb_id(rs.getInt("greenb_id"));
		              				member.setName(rs.getString("name"));
		              				member.setBeginday(rs.getString("beginday"));
		              				member.setDeposit(rs.getString("deposit"));
		              				member.setBank(rs.getString("bank"));
		              				member.setBanknumber(rs.getString("banknumber"));
		              				member.setAccountname(rs.getString("accountname"));
		              				member.setOther(rs.getString("other"));
		              				member.setPlan(rs.getInt("plan"));
		              				member.setIntroduce(rs.getString("introduce"));
		              				member.setEndday(rs.getString("endday"));
		              				member.setTotalmoney(rs.getString("totalmoney"));
		              				member.setTotalnumber(rs.getString("totalnumber"));
		              				member.setGivenumber(rs.getString("givenumber"));
		              				member.setOnedaymoney(rs.getString("onedaymoney"));
		              				member.setGivemoney(rs.getString("givemoney"));
		              				member.setBalance(rs.getString("balance"));
		              				member.setAddress1(rs.getString("address1"));
		              				member.setAddress2(rs.getString("address2"));
		              				member.setAddress3(rs.getString("address3"));
		              				member.setAddress4(rs.getString("address4"));
		                             list.add(member);
		                             System.out.println("select-2");
		                          }
		                       } catch (SQLException e) {
		                          throw new RuntimeException("게시글 검색 예외 발생", e);
		                       } finally {
		                          try{
		                             if(rs != null){rs.close();}
		                             if(pstmt != null){pstmt.close();}
		                             if(con != null){con.close();}
		                          }catch (Exception e){}
		                       }
		                       return  list;
		                     }

	@Override
	public List<Member> getAll2() throws RuntimeException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> getAll3() throws RuntimeException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> getAll4() throws RuntimeException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> getAll5() throws RuntimeException {
		// TODO Auto-generated method stub
		return null;
	}
}
