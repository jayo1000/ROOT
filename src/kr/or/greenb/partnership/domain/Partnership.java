package kr.or.greenb.partnership.domain;

/**
 * 운영자 정보 추상화 도메인 클래스
 * 
 * @author 임영묵
 */
public class Partnership {

	private String partnerid;
	private String passwd;
	private String name;
	private String area;

	public Partnership() {
		super();
	}

	public Partnership(String partnerid, String passwd, String name, String area) {
		super();
		this.partnerid = partnerid;
		this.passwd = passwd;
		this.name = name;
		this.area = area;
	}

	public String getPartnerid() {
		return partnerid;
	}

	public void setPartnerid(String partnerid) {
		this.partnerid = partnerid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	@Override
	public String toString() {
		return "Partnership [partnerid=" + partnerid + ", passwd=" + passwd + ", name=" + name + ", area=" + area + "]";
	}

}