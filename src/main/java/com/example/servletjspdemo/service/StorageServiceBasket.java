package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import com.example.servletjspdemo.domain.Shoe;

public class StorageServiceBasket {
	
	
	private List<Shoe> basket = new ArrayList<Shoe>();

	
	public void addToBasket(Shoe shoe){
		basket.add(shoe);
	}
	
	public void deleteToBasket(String name){
	Iterator<Shoe> iter = basket.iterator();
	while (iter.hasNext()) 
	{
	   Shoe shoe = iter.next();
	    if(shoe.getName().equals(name))
	        iter.remove();
	}
	    
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
