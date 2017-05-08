package com.niit.mks.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.mks.model.Customer;

@Repository
@Transactional
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	SessionFactory sessionFactory;

	/*
	 * Constructor for CustomerDAOImpl passing the sessionFactory
	 * 
	 */

	public CustomerDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/*
	 * 
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.niit.mks.dao.CustomerDAO#insertCustomer(com.niit.mks.model.Customer)
	 */

	public void insertCustomer(Customer customer) {

		sessionFactory.getCurrentSession().persist(customer);

	}

}
