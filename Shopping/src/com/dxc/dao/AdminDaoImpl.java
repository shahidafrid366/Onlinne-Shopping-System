package com.dxc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.dxc.pojo.Admin;
import com.dxc.pojo.Customer;
import com.dxc.pojo.Product;

public class AdminDaoImpl implements AdminDao {

	private static SessionFactory sessionFactory;

	static {
		Configuration configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
	}

	@Override
	public void addAdmin(Admin admin) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(admin);
		session.getTransaction().commit();
	}

	@Override
	public boolean adminLogin(int id, String password) {

		Session session = sessionFactory.openSession();
		Query query1 = session.createQuery("from Admin where id=:id and password=:password");
		query1.setParameter("id", id);
		query1.setParameter("password", password);

		List<Admin> list = query1.getResultList();
		for (Admin l : list) {
			if (id == l.getId() && password.equals(l.getPassword())) {
				return true;
			}
		}
		return false;
	}

	@Override
	public void addProducts(Product product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
	}

	@Override
	public List<Product> showAllProduct() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product");
		return query.getResultList();
	}

	@Override
	public void addCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(customer);
		session.getTransaction().commit();
	}

	@Override
	public boolean removeCustomer(int id, Customer customer) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from Customer");
		List<Customer> list = query.getResultList();
		for (Customer c : list) {
			if (c.getId() == id) {
				Session session1 = sessionFactory.openSession();
				session1.beginTransaction();
				Query query1 = session1.createQuery("delete from Customer where id=:id");
				query1.setParameter("id", id);
				query1.executeUpdate();
				session1.getTransaction().commit();
				session1.close();
				return true;
			}
		}
		session.close();
		return false;
	}

	@Override
	public List<Customer> viewAllCustomers() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Customer");
		return query.getResultList();
	}
}
