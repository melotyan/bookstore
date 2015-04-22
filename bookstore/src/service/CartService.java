package service;

import java.util.List;

import dao.CartDao;
import entity.Cart;
import entity.CartId;

public class CartService extends BaseService<Cart> {

	private CartDao cartDao;
	
	
	public CartService() {
		super();
		// TODO Auto-generated constructor stub
	}


	public CartDao getCartDao() {
		return cartDao;
	}


	public void setCartDao(CartDao cartDao) {
		super.setBaseDao(cartDao);
		this.cartDao = cartDao;
	}

	public void deleteById(CartId cartId) {
		
	}
}
