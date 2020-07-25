package com.dxc.dao;

import java.util.List;

import com.dxc.pojo.Admin;
import com.dxc.pojo.Customer;
import com.dxc.pojo.Product;

public interface AdminDao {
	
	public void addAdmin(Admin admin);

	public boolean adminLogin(int id, String password);
	
	public void addProducts(Product product);
	
	public List<Product> showAllProduct();
	
	public void addCustomer(Customer customer);
	
	public boolean removeCustomer(int id, Customer customer);

	public List<Customer> viewAllCustomers();
}
