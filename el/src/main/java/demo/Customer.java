package demo;

public class Customer {

	private int no;
	private String name;
	private String tel;
	private String address;
	private boolean isDeleted;
	private Car myCar;
	
	public Customer() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	
	public Car getMyCar() {
		return myCar;
	}
	public void setMyCar(Car myCar) {
		this.myCar = myCar;
	}
}
