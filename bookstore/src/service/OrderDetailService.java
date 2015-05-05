package service;

import dao.OrderDetailDao;
import entity.OrderDetail;

public class OrderDetailService extends BaseService<OrderDetail> {
	private OrderDetailDao orderDetailDao;

	public OrderDetailService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderDetailDao getOrderDetailDao() {
		return orderDetailDao;
	}

	public void setOrderDetailDao(OrderDetailDao orderDetailDao) {
		this.orderDetailDao = orderDetailDao;
	}
	
	
}
