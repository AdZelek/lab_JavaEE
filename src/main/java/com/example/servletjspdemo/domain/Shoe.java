package com.example.servletjspdemo.domain;

public class Shoe {
	private String name;
	private int size;
	public double price;
	
	
	public Shoe() {
		super();
	}
	public Shoe(String name, int size, double price) {
		super();
		this.name = name;
		this.size = size;
		this.price = price;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
