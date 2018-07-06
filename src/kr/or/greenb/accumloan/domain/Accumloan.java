package kr.or.greenb.accumloan.domain;

/**
 * 사용자 정보 추상화 도메인 클래스
 * 
 * @author 임영묵
 */
public class Accumloan {

	private int accumloan;
	private int accumloan2;
	
	public Accumloan() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Accumloan(int accumloan, int accumloan2) {
		super();
		this.accumloan = accumloan;
		this.accumloan2 = accumloan2;
	}

	public int getAccumloan() {
		return accumloan;
	}

	public void setAccumloan(int accumloan) {
		this.accumloan = accumloan;
	}

	public int getAccumloan2() {
		return accumloan2;
	}

	public void setAccumloan2(int accumloan2) {
		this.accumloan2 = accumloan2;
	}

	@Override
	public String toString() {
		return "Accumloan [accumloan=" + accumloan + ", accumloan2=" + accumloan2 + "]";
	}

}