package com.niit.mks.dao;

import com.niit.mks.model.Supplier;

public interface SupplierDAO {
	
	public boolean insertSupplier(Supplier supplier);
	public boolean removeSupplier(int id);
	public Supplier getASingleSupplier(int id);

}
