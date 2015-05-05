package action;

import java.util.Date;
import java.util.List;

import service.BookService;
import service.OrderDetailService;
import service.OrderService;
import service.UserService;

import com.opensymphony.xwork2.ActionSupport;

import entity.Book;
import entity.Order;
import entity.OrderDetail;
import entity.OrderDetailId;
import entity.User;


public class OrderAction extends ActionSupport {
	private Integer bookId;
	private String userId;
	private Short amount;
	private OrderService orderService;
	private OrderDetailService orderDetailService;
	private UserService userService;
	private BookService bookService;
	private List<OrderDetail> orderDetailList; 
	private List<Order> orderList;
	
	public Integer getBookId() {
		return bookId;
	}
	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Short getAmount() {
		return amount;
	}
	public void setAmount(Short amount) {
		this.amount = amount;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public OrderDetailService getOrderDetailService() {
		return orderDetailService;
	}
	public void setOrderDetailService(OrderDetailService orderDetailService) {
		this.orderDetailService = orderDetailService;
	}
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public BookService getBookService() {
		return bookService;
	}
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	public List<OrderDetail> getOrderDetailList() {
		return orderDetailList;
	}
	public void setOrderDetailList(List<OrderDetail> orderDetailList) {
		this.orderDetailList = orderDetailList;
	}
	public List<Order> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}
	
	public String payForBooks() {
		User user = userService.get(userId);
		Order order = new Order(user, new Date());
		orderService.save(order);
		
		Book book = bookService.get(bookId);
		int orderId = order.getId();
		OrderDetailId orderDetailId = new OrderDetailId(orderId, bookId);
		int price = book.getNewprice() * amount;
		OrderDetail orderDetail = new OrderDetail(orderDetailId, order, book, amount, price);
		orderDetailService.save(orderDetail);
		return SUCCESS;
	}
	
	public String viewOrderRecord() {
		String sql = "select * from order where userid=" + userId;
		orderList = orderService.findBySql(Order.class, sql);
		
	}
	
}
