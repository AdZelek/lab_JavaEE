package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import com.example.servletjspdemo.domain.Person;
import com.example.servletjspdemo.domain.Shoe;

public class StorageServiceShoes {
	
	private List<Shoe> db = new ArrayList<Shoe>();
	private List<Shoe> basket = new ArrayList<Shoe>();
	public  Enumeration <String> basket_2 ;
	
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
	
	public void generateTestData() {
		Shoe shoe1 = new Shoe("Adidas M23",40,199.99); 
		Shoe shoe2 = new Shoe("Adidas V23",39,299.99); 
		Shoe shoe3 = new Shoe("Nike 1200",37,99.99); 
		Shoe shoe4 = new Shoe("Nike 2200",38,199.99); 
		add(shoe1);
		add(shoe2);
		add(shoe3);
		add(shoe4);
		  
    }
	public Shoe find(String name)
	{
		for (int i = 0; i<getAllShoesBasket().size(); i++) 
		{
			if(getAllShoes().get(i).getName() == name) return getAllShoes().get(i) ; 
		}
		
		return null; 
		
		
	}

}
