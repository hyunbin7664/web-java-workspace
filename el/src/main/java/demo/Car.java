package demo;

public class Car {

	private String name;
	private String company;
	private int price;
	
	public Car () {}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getPrice() {
		return price;
	}
	
	public int getDiscountPrice() {
		return (int) (price*0.8);
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
