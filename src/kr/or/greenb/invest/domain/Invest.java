package kr.or.greenb.invest.domain;

/**
 * 빠른대출상담 신청한 회원 추상화 도메인 클래스
 * 
 * @author 임영묵
 */
public class Invest {

	private int number;
	private String name;
	private String email;
	private String phonenumber;
	private String wanted;	
	private String ip;

	public Invest() {
		super();
	}

	public Invest(int number, String name, String email, String phonenumber, String wanted, String ip) {
		super();
		this.number = number;
		this.name = name;
		this.email = email;
		this.phonenumber = phonenumber;
		this.wanted = wanted;
		this.ip = ip;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getWanted() {
		return wanted;
	}

	public void setWanted(String wanted) {
		this.wanted = wanted;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	@Override
	public String toString() {
		return "Invest [number=" + number + ", name=" + name + ", email=" + email + ", phonenumber=" + phonenumber
				+ ", wanted=" + wanted + ", ip=" + ip + "]";
	}


}