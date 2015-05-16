package action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.BookService;
import service.CartService;
import service.OrderDetailService;
import service.OrderService;
import service.UserService;

import com.opensymphony.xwork2.ActionSupport;

import entity.Book;
import entity.Cart;
import entity.CartId;
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
	private List<List<OrderDetail>> list;
	
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
	
	public List<List<OrderDetail>> getList() {
		return list;
	}
	public void setList(List<List<OrderDetail>> list) {
		this.list = list;
	}
	
	//从首页购买
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
		OrderDetail orderDetail = new OrderDetail(orderDetailId, order, book, amount, price, new Timestamp(new Date().getTime()));
		orderDetailService.save(orderDetail);
		//更新剩余的书的数量
		book.setNum((short)(book.getNum() - amount));
		bookService.update(book);
		return SUCCESS;
	}
	
	public String viewOrderRecord() {
		System.out.println("view order record  userId=" + userId);
		String sql = "select * from torder where userid=" + userId + " order by id desc";
		List<Torder> orderList = orderService.findBySql(Torder.class, sql);
		list = new ArrayList<List<OrderDetail>>();
		for (Torder order : orderList) {
			sql = "select * from order_detail where recordid =" + order.getId() + " order by date desc";
			List<OrderDetail> detailList = orderDetailService.findBySql(OrderDetail.class, sql);
			if (detailList != null && detailList.size() != 0)
				list.add(detailList);
		}
		return SUCCESS;
	}
	
}
