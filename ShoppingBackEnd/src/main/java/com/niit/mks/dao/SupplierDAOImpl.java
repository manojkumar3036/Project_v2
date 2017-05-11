package com.niit.mks.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mks.model.Supplier;

@Repository("supplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO {

	@Autowired
	SessionFactory sessionFactory;

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean insertSupplier(Supplier supplier) {
		try {

			sessionFactory.getCurrentSession().persist(supplier);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public boolean removeSupplier(int id) {
		try {
			Supplier supplier = (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, id);
			sessionFactory.getCurrentSession().delete(supplier);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public Supplier getASingleSupplier(int id) {

		return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, id);

	}

}
