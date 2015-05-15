package service;

import dao.OrderDao;
import entity.Torder;

public class OrderService extends BaseService<Torder> {
	private OrderDao orderDao;

	public OrderService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
	
	
}
