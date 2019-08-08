package com.sonar.service;

import com.sonar.model.Cart;

public interface CartServiceInterface {
	
	public void addToCart(Cart cart);
	public boolean isPresent(int customerId, int productId);
	public Cart findByCustomerIdAndProductId(int customerId, int productId);

}
