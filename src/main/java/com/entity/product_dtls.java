package com.entity;

public class product_dtls {
	
	private int product_Id;
	private String  product_name;
	private String product_brand;
	private String product_price;
	private String product_Category;
	private String product_photo;
	public product_dtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public product_dtls(String product_name, String product_brand, String product_price, String product_Category,
			String product_photo) {
		super();
		this.product_name = product_name;
		this.product_brand = product_brand;
		this.product_price = product_price;
		this.product_Category = product_Category;
		this.product_photo = product_photo;
	}
	public int getProduct_Id() {
		return product_Id;
	}
	public void setProduct_Id(int product_Id) {
		this.product_Id = product_Id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_brand() {
		return product_brand;
	}
	public void setProduct_brand(String product_brand) {
		this.product_brand = product_brand;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getProduct_Category() {
		return product_Category;
	}
	public void setProduct_Category(String product_Category) {
		this.product_Category = product_Category;
	}
	public String getProduct_photo() {
		return product_photo;
	}
	public void setProduct_photo(String product_photo) {
		this.product_photo = product_photo;
	}
	@Override
	public String toString() {
		return "product_dtls [product_Id=" + product_Id + ", product_name=" + product_name + ", product_brand="
				+ product_brand + ", product_price=" + product_price + ", product_Category=" + product_Category
				+ ", product_photo=" + product_photo + "]";
	}
	
	
	
	}
	
	
	
	
	


