package com.DAO;

import java.util.List;

import com.entity.Product_Order;

public interface ProductOrderDAO {

    public int getOrderNo();
	
	public boolean SaveOrder(List<Product_Order> blist);
	
	public List<Product_Order> getProduct(String email);
	
	public List<Product_Order> getAllOrder();
	
	public boolean deleteOrder(String order_id);
	
}
