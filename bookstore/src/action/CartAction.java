package action;

import java.sql.Timestamp;
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

public class CartAction extends ActionSupport {

	private Integer bookId;
	private String userId;
	private Short amount;
	private CartService cartService;
	private BookService bookService;
	private UserService userService;
	private OrderService orderService;
	private OrderDetailService orderDetailService;
	private List<Cart> list;

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

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
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

	public List<Cart> getList() {
		return list;
	}

	public void setList(List<Cart> list) {
		this.list = list;
	}

	public String addToCart() {// int bookId, String userId, Short amount
		System.out.println(bookId + " " + userId + " " + amount);
		if (userId == null)
			return LOGIN;
		Book book = bookService.get(Book.class, bookId);
		User user = userService.get(User.class, userId);
		if (book != null && user != null) {
			CartId cartId = new CartId(bookId, userId);
			Cart cart = new Cart();
			cart.setId(cartId);
			Cart cartRecord = cartService.get(Cart.class, cartId);
			if (cartRecord == null) {
				cart.setAmount(amount);
				cart.setDate(new Timestamp(new Date().getTime()));
				cart.setBook(book);
				cart.setUser(user);
				cartService.save(cart);
			} else {
				cartRecord.setAmount((short) (amount + cartRecord.getAmount()));
				cartService.update(cartRecord);
			}
			return SUCCESS;
		}
		return ERROR;
	}

	public String deleteFromCart() {
		CartId cartId = new CartId(bookId, userId);
		Cart cart = cartService.get(Cart.class, cartId);
		cartService.delete(cart);
		return SUCCESS;
	}

	public String updateCart() {
		CartId cartId = new CartId(bookId, userId);
		Cart cart = cartService.get(Cart.class, cartId);
		cart.setAmount(amount);
		cartService.update(cart);
		return SUCCESS;
	}

	public String viewCart() {
		System.out.println("ViewCart userId=" + userId);
		String sql = "select * from cart where userid=" + userId + " order by date";
		list = cartService.findBySql(Cart.class, sql);
		return SUCCESS;
	}

	// 从单个购物车里购买
	public String payBookInCart() {
		if (userId == null)
			return LOGIN;
		User user = userService.get(User.class, userId);
		System.out.println("user:" + user + " userId:" + userId);
		orderService.save(new Torder(user));

		Book book = bookService.get(Book.class, bookId);
		if (book.getNum() < amount)
			return ERROR;
		String sql = "select * from (select * from torder where userid="
				+ userId + " order by id desc limit 1) as t";
		List<Torder> list = orderService.findBySql(Torder.class, sql);
		Torder order = list.get(0);
		int orderId = order.getId();
		System.out.println("orderId" + orderId);
		OrderDetailId orderDetailId = new OrderDetailId(orderId, bookId);
		int price = book.getNewprice() * amount;
		OrderDetail orderDetail = new OrderDetail(orderDetailId, order, book,
				amount, price, new Timestamp(new Date().getTime()));
		orderDetailService.save(orderDetail);
		// 更新剩余的书的数量
		book.setNum((short) (book.getNum() - amount));
		bookService.update(book);
		// 更新相应的购物车
		Cart cart = new Cart();
		cart.setId(new CartId(bookId, userId));
		cartService.delete(cart);

		return SUCCESS;
	}

	public String payAllOfCart() {
		String sql = "select * from cart where userid=" + userId;
		list = cartService.findBySql(Cart.class, sql);
		if (list != null) {
			User user = list.get(0).getUser();
			orderService.save(new Torder(user));
			//获得刚刚数据库刚刚插入的那一行的ID
			String sql2 = "select * from (select * from torder where userid=" + userId + " order by id desc limit 1) as t";
			List<Torder> orderList = orderService.findBySql(Torder.class, sql2);
			Torder order = orderList.get(0);
			int orderId = order.getId();
			
			for (Cart cart : list) {
				int bookId = cart.getBook().getId();
				Book book = cart.getBook();
				Short amount = cart.getAmount();
				int price = cart.getBook().getNewprice() * amount;
				OrderDetailId orderDetailId = new OrderDetailId(orderId,
						bookId);
				OrderDetail orderDetail = new OrderDetail(orderDetailId, order,
						book, amount, price,
						new Timestamp(new Date().getTime()));
				orderDetailService.save(orderDetail);
				cartService.delete(cart);
				//更新剩余的书的数量
				book.setNum((short)(book.getNum() - amount));
				bookService.update(book);
			}
		}
		return SUCCESS;
	}
}
