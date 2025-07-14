package kr.co.book.vo;

import java.util.Date;

public class Book {

	private int no;
	private String title;
	private String author;
	private String publisher;
	private int price;
	private int stock;
	private String summary;
	private String pubDate;
	private Date createdDate;
	private Date updatedDate;
	
	public Book() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}

	@Override
	public String toString() {
		return "Book [no=" + no + ", title=" + title + ", author=" + author + ", publisher=" + publisher + ", price="
				+ price + ", stock=" + stock + ", summary=" + summary + ", pubDate=" + pubDate + ", createdDate="
				+ createdDate + ", updatedDate=" + updatedDate + "]";
	};
	
	
}
