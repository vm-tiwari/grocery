package com.DAO;

import java.util.List;

import com.entity.product_dtls;

public interface ProductDAO {
	
	public boolean addProducts(product_dtls p);
	
	public List<product_dtls> getAllProducts();
	
	public product_dtls getProductId(int id);
	
	public boolean deleteProduct(int id);
	
	public boolean EditProducts(product_dtls b);
	
	public List<product_dtls> getAllHouseHold();
	
	public List<product_dtls> getAllsnacksBeverages();
	
	public List<product_dtls> getAllstaples();
	
	public List<product_dtls> getAllpackagefood();
	
    public List<product_dtls> getstaples();
	
	public List<product_dtls> getpackagefood();
	
	
	
	


}
