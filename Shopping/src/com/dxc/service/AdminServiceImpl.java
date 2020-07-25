package com.dxc.service;

import java.util.List;

import com.dxc.dao.AdminDao;
import com.dxc.dao.AdminDaoImpl;
import com.dxc.pojo.Admin;
import com.dxc.pojo.Customer;
import com.dxc.pojo.Product;

public class AdminServiceImpl implements AdminService {

	AdminDao adminDao = new AdminDaoImpl();

	@Override
	public boolean adminLogin(int id, String password) {
		return adminDao.adminLogin(id, password);
	}

	@Override
	public void addAdmin(Admin admin) {
		adminDao.addAdmin(admin);
	}

	@Override
	public void addProducts(Product product) {
		adminDao.addProducts(product);
	}

	@Override
	public List<Product> showAllProduct() {
		return adminDao.showAllProduct();
	}

	@Override
	public void addCustomer(Customer customer) {
		adminDao.addCustomer(customer);
	}

	@Override
	public boolean removeCustomer(int id, Customer customer) {
		return adminDao.removeCustomer(id, customer);
	}

	@Override
	public List<Customer> viewAllCustomers() {
		return adminDao.viewAllCustomers();
	}

}
