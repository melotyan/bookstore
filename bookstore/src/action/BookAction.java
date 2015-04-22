package action;



import java.util.Date;
import java.util.List;

import service.BookService;
import service.CartService;
import service.UserService;

import com.opensymphony.xwork2.ActionSupport;

import entity.Book;
import entity.Cart;
import entity.CartId;
import entity.User;

public class BookAction extends ActionSupport {
	private Integer bookId;
	private BookService bookService;
	
	public Integer getBookId() {
		return bookId;
	}


	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	public BookService getBookService() {
		return bookService;
	}


	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public List<Book> listBooks() {
		return bookService.findAll(Book.class);
	}

}
