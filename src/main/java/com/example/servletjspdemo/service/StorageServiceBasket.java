package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import com.example.servletjspdemo.domain.Person;
import com.example.servletjspdemo.domain.Shoe;

public class StorageServiceBasket {
	
	
	private List<Shoe> basket = new ArrayList<Shoe>();

	
	public void addToBasket(Shoe shoe){
		basket.add(shoe);
	}
	public void deleteToBasket(Shoe shoe){
 		basket.remove(shoe); 
	}
	
	public List<Shoe> getAllShoesBasket(){
		return basket;
	}
	
	public Shoe find(String name)
	{
		for (int i = 0; i<getAllShoesBasket().size(); i++) 
		{
			if(getAllShoesBasket().get(i).getName() == name) return getAllShoesBasket().get(i) ; 
		}
		
		return null; 
		
		
	}

}
