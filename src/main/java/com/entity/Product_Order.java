package com.entity;

public class Product_Order {
   
	
	private int id;
	private String OrderId;
	private String userName;
	private String UserEmail;
	private String FullAdd;
	private String Phone;
	private String ProductName;
	private String price;
	private String paymentType;
	
	public Product_Order() {
		super();
		
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrderId() {
		return OrderId;
	}
	public void setOrderId(String orderId) {
		OrderId = orderId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return UserEmail;
	}
	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}
	public String getFullAdd() {
		return FullAdd;
	}
	public void setFullAdd(String fullAdd) {
		FullAdd = fullAdd;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}



	@Override
	public String toString() {
		return "Product_Order [id=" + id + ", OrderId=" + OrderId + ", userName=" + userName + ", UserEmail="
				+ UserEmail + ", FullAdd=" + FullAdd + ", Phone=" + Phone + ", ProductName=" + ProductName + ", price="
				+ price + ", paymentType=" + paymentType + "]";
	}
	
	
	
	
	
}
