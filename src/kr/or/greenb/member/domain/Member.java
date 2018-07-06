package kr.or.greenb.member.domain;

/**
 * 사용자 정보 추상화 도메인 클래스
 * 
 * @author 임영묵
 */
public class Member {

	private int member_num;
	private int greenb_id;
	private String name;
	private String beginday;
	private String deposit;
	private String bank;
	private String banknumber;
	private String accountname;
	private String other;
	private int plan;
	private String introduce;
	private String endday;
	private String totalmoney;
	private String totalnumber;
	private String givenumber;
	private String onedaymoney;
	private String givemoney;
	private String balance;
	private String address1;
	private String address2;
	private String address3;
	private String address4;

	public Member() {
		super();
	}

	public Member(int member_num, int greenb_id, String name, String beginday, String deposit, String bank,
			String banknumber, String accountname, String other, int plan, String introduce, String endday,
			String totalmoney, String totalnumber, String givenumber, String onedaymoney, String givemoney,
			String balance, String address1, String address2, String address3, String address4) {
		super();
		this.member_num = member_num;
		this.greenb_id = greenb_id;
		this.name = name;
		this.beginday = beginday;
		this.deposit = deposit;
		this.bank = bank;
		this.banknumber = banknumber;
		this.accountname = accountname;
		this.other = other;
		this.plan = plan;
		this.introduce = introduce;
		this.endday = endday;
		this.totalmoney = totalmoney;
		this.totalnumber = totalnumber;
		this.givenumber = givenumber;
		this.onedaymoney = onedaymoney;
		this.givemoney = givemoney;
		this.balance = balance;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.address4 = address4;
	}

	public int getMember_num() {
		return member_num;
	}

	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}

	public int getGreenb_id() {
		return greenb_id;
	}

	public void setGreenb_id(int greenb_id) {
		this.greenb_id = greenb_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBeginday() {
		return beginday;
	}

	public void setBeginday(String beginday) {
		this.beginday = beginday;
	}

	public String getDeposit() {
		return deposit;
	}

	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getBanknumber() {
		return banknumber;
	}

	public void setBanknumber(String banknumber) {
		this.banknumber = banknumber;
	}

	public String getAccountname() {
		return accountname;
	}

	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public int getPlan() {
		return plan;
	}

	public void setPlan(int plan) {
		this.plan = plan;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getEndday() {
		return endday;
	}

	public void setEndday(String endday) {
		this.endday = endday;
	}

	public String getTotalmoney() {
		return totalmoney;
	}

	public void setTotalmoney(String totalmoney) {
		this.totalmoney = totalmoney;
	}

	public String getTotalnumber() {
		return totalnumber;
	}

	public void setTotalnumber(String totalnumber) {
		this.totalnumber = totalnumber;
	}

	public String getGivenumber() {
		return givenumber;
	}

	public void setGivenumber(String givenumber) {
		this.givenumber = givenumber;
	}

	public String getOnedaymoney() {
		return onedaymoney;
	}

	public void setOnedaymoney(String onedaymoney) {
		this.onedaymoney = onedaymoney;
	}

	public String getGivemoney() {
		return givemoney;
	}

	public void setGivemoney(String givemoney) {
		this.givemoney = givemoney;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public String getAddress4() {
		return address4;
	}

	public void setAddress4(String address4) {
		this.address4 = address4;
	}

	@Override
	public String toString() {
		return "Member [member_num=" + member_num + ", greenb_id=" + greenb_id + ", name=" + name + ", beginday="
				+ beginday + ", deposit=" + deposit + ", bank=" + bank + ", banknumber=" + banknumber + ", accountname="
				+ accountname + ", other=" + other + ", plan=" + plan + ", introduce=" + introduce + ", endday="
				+ endday + ", totalmoney=" + totalmoney + ", totalnumber=" + totalnumber + ", givenumber=" + givenumber
				+ ", onedaymoney=" + onedaymoney + ", givemoney=" + givemoney + ", balance=" + balance + ", address1="
				+ address1 + ", address2=" + address2 + ", address3=" + address3 + ", address4=" + address4 + "]";
	}

}