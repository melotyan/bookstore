package service;

import dao.BookInfoDao;
import entity.BookInfo;

public class BookInfoService extends BaseService<BookInfo> {
	private BookInfoDao bookInfoDao;

	public BookInfoService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookInfoDao getBookInfoDao() {
		return bookInfoDao;
	}

	public void setBookInfoDao(BookInfoDao bookInfoDao) {
		this.bookInfoDao = bookInfoDao;
	}
	
	
}
