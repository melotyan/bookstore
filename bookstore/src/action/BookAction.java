package action;



import java.util.List;

import service.BookInfoService;
import service.BookService;

import com.opensymphony.xwork2.ActionSupport;

import entity.Book;
import entity.BookInfo;

public class BookAction extends ActionSupport {
	private Integer bookId;
	private BookService bookService;
	private BookInfoService bookInfoService;
	private List list;
	
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



	public BookInfoService getBookInfoService() {
		return bookInfoService;
	}


	public void setBookInfoService(BookInfoService bookInfoService) {
		this.bookInfoService = bookInfoService;
	}


	public List getList() {
		return list;
	}


	public void setList(List list) {
		this.list = list;
	}


	public String listBooks() {
		list = bookService.findAll(Book.class);
		return SUCCESS;
	}
	
	public String viewBookDetail() {
		list = bookInfoService.findAll(BookInfo.class);
		return SUCCESS;
	}

}
