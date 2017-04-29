package com.niit.mks.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mks.model.Product;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory sessionFactory;

	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void insertProduct(Product product) {

		sessionFactory.getCurrentSession().persist(product);
	}

	@SuppressWarnings("unchecked")
	public List<Product> displayAllProduct() {
		
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public void updateProduct(Product product) {
		 sessionFactory.getCurrentSession().update(product);
		
	}

	public Product getProduct(int id) {
		
		Product singleProduct=(Product) sessionFactory.getCurrentSession().get(Product.class, id);
		return singleProduct;
	}

}
