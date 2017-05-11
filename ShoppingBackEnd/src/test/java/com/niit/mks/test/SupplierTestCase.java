package com.niit.mks.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.mks.dao.SupplierDAO;
import com.niit.mks.model.Supplier;

public class SupplierTestCase {
	

	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static Supplier supplier;
	
	@Autowired
	static SupplierDAO supplierDAO;
	
	@BeforeClass
	static public void initalize()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		supplier=context.getBean(Supplier.class);
		supplierDAO=(SupplierDAO) context.getBean("supplierDAO");
	}
	
	/*@Test
	public void insertTest()
	{
		supplier.setId(0);
		supplier.setSupplierName("M.K.Shah ");
		supplier.setSupplierAddress("Bangalore");
		supplier.setCategory("Television");
		supplier.setQuantity(10);
		
		assertEquals("Inserted Successfully",true,supplierDAO.insertSupplier(supplier));
		
	}*/

	@Test
	public void getASingleSupplierTest()
	{
		supplier=supplierDAO.getASingleSupplier(2);
		assertEquals("Retrieved successfully","Bangalore",supplier.getSupplierAddress());
		
	}
	
	@Test
	public void removeTest()
	{
		assertEquals("Deleted Successfully",true,supplierDAO.removeSupplier(1));
	}
}
