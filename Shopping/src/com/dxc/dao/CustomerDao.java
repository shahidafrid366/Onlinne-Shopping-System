package com.dxc.dao;

import java.util.List;

import com.dxc.pojo.Cart;
import com.dxc.pojo.Product;

public interface CustomerDao {

	public boolean customerLogin(int id, String password);
	
	public boolean addBalance(int i, double balance);
	
	public List<Product> avaiableProducts();

	public boolean addToCart(Cart cart);

	public List<Cart> getCartList(int id, int productNo);

	public boolean payBill(int id, int productNo, double payableAmount, int quantity);

	public List<Cart> displayCartProducts(Cart cart, int i);

}
