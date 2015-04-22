package service;

import dao.BookDao;
import entity.Book;

public class BookService extends BaseService<Book> {
	
	private BookDao bookDao;
	
	public BookService() {
		super();
	}
	
	public BookDao getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDao bookDao) {
		super.setBaseDao(bookDao);
		this.bookDao = bookDao;
	}
}
