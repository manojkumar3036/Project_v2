package com.niit.mks.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.mks.dao.CategoryDAO;
import com.niit.mks.dao.CategoryDAOImpl;
import com.niit.mks.model.Category;

public class CategoryTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;

	@Autowired
	static Category category;

	@Autowired
	static CategoryDAO categoryDAO;

	@BeforeClass
	static public void initalize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.mks");
		context.refresh();
		category = context.getBean(Category.class);
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}

/*	@Test
	public void insertTestCase() {

		*//**
		 * For inserting
		 * 
		 *//*
		category.setId(0);
		category.setCategoryName("Refrigerator");
		boolean flag = categoryDAO.insertCategory(category);
		assertEquals("Successful", true, flag);

	}*/

	/*
	 * @Test public void deleteTestCase() {
	 * 
	 * category=categoryDAO.getASingleCategory(1); System.out.println(category);
	 * assertEquals("Success",true,categoryDAO.deleteCategory(1)); }
	 */

	@Test
	public void getASingleCategoryTestCase() {
		category=categoryDAO.getASingleCategory(2);
		assertEquals("Sucess", "Refrigerator", category.getCategoryName());
	}
	
	/*@Test
	public void updateCategoryTestCase()
	{
		category=categoryDAO.getASingleCategory(2);
		category.setCategoryName("Television");
		assertEquals("Success",true,categoryDAO.updateCategory(category));
	}*/
	
	
	
	
}
