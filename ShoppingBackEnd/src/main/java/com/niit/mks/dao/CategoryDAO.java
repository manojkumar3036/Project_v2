package com.niit.mks.dao;

import java.util.List;

import com.niit.mks.model.Category;

public interface CategoryDAO {
	
	public List<Category> displayAllCategories();
	public boolean insertCategory(Category category);
	public boolean deleteCategory(int id);
	public Category getASingleCategory(int id);
	public boolean updateCategory(Category category);

}
