package com.niit.mks.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mks.model.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	public List<Category> displayAllCategories() {

		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	public boolean insertCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().persist(category);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;

	}

	public boolean deleteCategory(int id) {
		try {
			Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, id);
			sessionFactory.getCurrentSession().delete(category);
		} catch (Exception e) {
			e.printStackTrace();
			return false;

		}
		return true;

	}

	public Category getASingleCategory(int id) {
		
			return (Category) sessionFactory.getCurrentSession().get(Category.class, id);

		

	}

	public boolean updateCategory(Category category) {
		try {
		sessionFactory.getCurrentSession().update(category);
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
