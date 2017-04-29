package com.niit.mks.dao;

import java.util.List;

import com.niit.mks.model.Product;

public interface ProductDAO {
	
	public void insertProduct(Product product);
	public List<Product> displayAllProduct();
	public void updateProduct(Product product);
	public Product getProduct(int id);

}
