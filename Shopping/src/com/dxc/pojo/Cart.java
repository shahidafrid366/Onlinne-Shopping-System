package com.dxc.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cart {

	@Id
	private int serialNo;
	private int id;
	private int productNo;
	private int quantity;
	private double grandTotal;
	private double totalDiscount;
	private double payableAmount;

	public Cart() {

	}

	public int getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(int serialNo) {
		this.serialNo = serialNo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

	public double getTotalDiscount() {
		return totalDiscount;
	}

	public void setTotalDiscount(double totalDiscount) {
		this.totalDiscount = totalDiscount;
	}

	public double getPayableAmount() {
		return payableAmount;
	}

	public void setPayableAmount(double payableAmount) {
		this.payableAmount = payableAmount;
	}

	@Override
	public String toString() {
		return "Cart [serialNo=" + serialNo + ", id=" + id + ", productNo=" + productNo + ", grandTotal=" + grandTotal
				+ ", totalDiscount=" + totalDiscount + ", payableAmount=" + payableAmount + "]";
	}

}
