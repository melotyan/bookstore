package action;

import java.util.Date;
import java.util.List;

import service.BookService;
import service.OrderDetailService;
import service.OrderService;
import service.UserService;

import com.opensymphony.xwork2.ActionSupport;

import entity.Book;
import entity.OrderDetail;
import entity.OrderDetailId;
import entity.Torder;
import entity.User;


public class OrderAction extends ActionSupport {
	private Integer bookId;
	private String userId;
	private Short amount;
	private OrderService orderService;
	private OrderDetailService orderDetailService;
	private UserService userService;
	private BookService bookService;
	private List<OrderDetail> olist;
	
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

	public List<OrderDetail> getOlist() {
		return olist;
	}
	public void setoList(List<OrderDetail> list) {
		this.olist = list;
	}
	public String payForBooks() {
		if (userId == null)
			return LOGIN;
		User user = userService.get(User.class, userId);
		System.out.println("user:" + user + " userId:" + userId);
		orderService.save(new Torder(user));
		
		Book book = bookService.get(Book.class, bookId);
		if (book.getNum() < amount)
			return ERROR;
		String sql = "select * from (select * from torder where userid=" + userId + " order by id desc limit 1) as t";
		List<Torder> list = orderService.findBySql(Torder.class, sql);
		Torder order = list.get(0);
		int orderId = order.getId();
		System.out.println("orderId" + orderId);
		OrderDetailId orderDetailId = new OrderDetailId(orderId, bookId);
		int price = book.getNewprice() * amount;
		OrderDetail orderDetail = new OrderDetail(orderDetailId, order, book, amount, price, new Date());
		orderDetailService.save(orderDetail);
		//更新剩余的书的数量
		book.setNum((short)(book.getNum() - amount));
		bookService.update(book);
		return SUCCESS;
	}
	
	public String viewOrderRecord() {
		String sql = "select * from order where userid=" + userId;
		List<Torder> orderList = orderService.findBySql(Torder.class, sql);
		
		for (Torder order : orderList) {
			sql = "select * from order_detail where recordid =" + order.getId() + " order by date desc";
			olist = orderDetailService.findBySql(OrderDetail.class, sql);
		}
		return SUCCESS;
	}
	
}
