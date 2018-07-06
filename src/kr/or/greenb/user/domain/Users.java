package kr.or.greenb.user.domain;

import java.sql.Date;

/**
 * 사용자 정보 추상화 도메인 클래스
 * 
 * @author 임영묵
 */
public class Users {

	private int num;
	private String id;
	private String passwd;
	private String name;
	private String email;
	private String job;
	private String phonenumber1;
	private String phonenumber2;
	private String phonenumber3;
	private Date date;

	public Users() {
		super();
	}

	public Users(int num, String id, String passwd, String name, String email, String job, String phonenumber1,
			String phonenumber2, String phonenumber3, Date date) {
		super();
		this.num = num;
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.email = email;
		this.job = job;
		this.phonenumber1 = phonenumber1;
		this.phonenumber2 = phonenumber2;
		this.phonenumber3 = phonenumber3;
		this.date = date;
	}

	/**
	 * @return the num
	 */
	public int getNum() {
		return num;
	}

	/**
	 * @param num the num to set
	 */
	public void setNum(int num) {
		this.num = num;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the passwd
	 */
	public String getPasswd() {
		return passwd;
	}

	/**
	 * @param passwd the passwd to set
	 */
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the job
	 */
	public String getJob() {
		return job;
	}

	/**
	 * @param job the job to set
	 */
	public void setJob(String job) {
		this.job = job;
	}

	/**
	 * @return the phonenumber1
	 */
	public String getPhonenumber1() {
		return phonenumber1;
	}

	/**
	 * @param phonenumber1 the phonenumber1 to set
	 */
	public void setPhonenumber1(String phonenumber1) {
		this.phonenumber1 = phonenumber1;
	}

	/**
	 * @return the phonenumber2
	 */
	public String getPhonenumber2() {
		return phonenumber2;
	}

	/**
	 * @param phonenumber2 the phonenumber2 to set
	 */
	public void setPhonenumber2(String phonenumber2) {
		this.phonenumber2 = phonenumber2;
	}

	/**
	 * @return the phonenumber3
	 */
	public String getPhonenumber3() {
		return phonenumber3;
	}

	/**
	 * @param phonenumber3 the phonenumber3 to set
	 */
	public void setPhonenumber3(String phonenumber3) {
		this.phonenumber3 = phonenumber3;
	}

	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}

	/**
	 * @param date the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [num=" + num + ", id=" + id + ", passwd=" + passwd + ", name=" + name + ", email=" + email
				+ ", job=" + job + ", phonenumber1=" + phonenumber1 + ", phonenumber2=" + phonenumber2
				+ ", phonenumber3=" + phonenumber3 + ", date=" + date + "]";
	}

}