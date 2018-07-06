package kr.or.greenb.speedLoan.domain;

import java.sql.Date;

/**
 * 빠른대출상담 신청한 회원 추상화 도메인 클래스
 * 
 * @author 임영묵
 */
public class SpeedLoan {

	private int number;
	private String name;
	private String phonenumber1;
	private String phonenumber2;
	private String phonenumber3;	
	private String requestmoney;
	private String ip;
	private Date regdate;

	public SpeedLoan() {
		super();
	}

	public SpeedLoan(int number, String name, String phonenumber1, String phonenumber2, String phonenumber3,
			String requestmoney, String ip, Date regdate) {
		super();
		this.number = number;
		this.name = name;
		this.phonenumber1 = phonenumber1;
		this.phonenumber2 = phonenumber2;
		this.phonenumber3 = phonenumber3;
		this.requestmoney = requestmoney;
		this.ip = ip;
		this.regdate = regdate;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhonenumber1() {
		return phonenumber1;
	}

	public void setPhonenumber1(String phonenumber1) {
		this.phonenumber1 = phonenumber1;
	}

	public String getPhonenumber2() {
		return phonenumber2;
	}

	public void setPhonenumber2(String phonenumber2) {
		this.phonenumber2 = phonenumber2;
	}

	public String getPhonenumber3() {
		return phonenumber3;
	}

	public void setPhonenumber3(String phonenumber3) {
		this.phonenumber3 = phonenumber3;
	}

	public String getRequestmoney() {
		return requestmoney;
	}

	public void setRequestmoney(String requestmoney) {
		this.requestmoney = requestmoney;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "SpeedLoan [number=" + number + ", name=" + name + ", phonenumber1=" + phonenumber1 + ", phonenumber2="
				+ phonenumber2 + ", phonenumber3=" + phonenumber3 + ", requestmoney=" + requestmoney + ", ip=" + ip
				+ ", regdate=" + regdate + "]";
	}
	
}