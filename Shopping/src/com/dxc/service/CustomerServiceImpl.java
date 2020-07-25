package com.dxc.service;

import java.util.List;

import com.dxc.dao.CustomerDao;
import com.dxc.dao.CustomerDaoImpl;
import com.dxc.pojo.Cart;
import com.dxc.pojo.Product;

public class CustomerServiceImpl implements CustomerService{

	CustomerDao customerDao = new CustomerDaoImpl();
	
	@Override
	public boolean customerLogin(int id, String password) {
		return customerDao.customerLogin(id, password);
	}

	@Override
	public boolean addBalance(int i, double balance) {
		return customerDao.addBalance(i, balance);
	}
	
	@Override
	public List<Product> avaiableProducts() {
		return customerDao.avaiableProducts();
	}

	@Override
	public boolean addToCart(Cart cart) {
		return customerDao.addToCart(cart);
	}

	@Override
	public List<Cart> getCartList(int id, int productNo) {
		return customerDao.getCartList(id, productNo);
	}

	@Override
	public boolean payBill(int id, int productNo, double payableAmount, int quantity) {
		return customerDao.payBill(id, productNo, payableAmount, quantity);
	}

	@Override
	public List<Cart> displayCartProducts(Cart cart, int i) {
		return customerDao.displayCartProducts(cart, i);
	}

}
