package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Person;
import com.example.servletjspdemo.domain.Shoe;

public class StorageServiceShoes {
	
	private List<Shoe> db = new ArrayList<Shoe>();
	private List<Shoe> basket = new ArrayList<Shoe>();
	
	public void add(Shoe shoe){
		Shoe newShoe = new Shoe(shoe.getName(),shoe.getSize(),shoe.getPrice()); 
		db.add(newShoe);
	}
	
	public List<Shoe> getAllShoes(){
		return db;
	}
	
	public void addToBasket(Shoe shoe){
		Shoe newShoe = new Shoe(shoe.getName(),shoe.getSize(),shoe.getPrice()); 
		basket.add(newShoe);
	}
	
	public List<Shoe> getAllShoesBasket(){
		return basket;
	}
	public void addShoesBase()
	{
		
	}

}
