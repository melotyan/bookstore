package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import service.BookInfoService;
import service.BookService;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.jmx.snmp.Timestamp;

import entity.Book;
import entity.BookInfo;

public class BookAction extends ActionSupport {
	private File file;
	private Integer bookId;
	private String name;
	private Short num;
	private Short primaryprice;
	private Short newprice;
	private String image;
	private String class_;
	private String author;
	private String publishhouse;
	private Date publishdate;
	private String description;
	private BookService bookService;
	private BookInfoService bookInfoService;
	private List list;

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Short getNum() {
		return num;
	}

	public void setNum(Short num) {
		this.num = num;
	}

	public Short getPrimaryprice() {
		return primaryprice;
	}

	public void setPrimaryprice(Short primaryprice) {
		this.primaryprice = primaryprice;
	}

	public Short getNewprice() {
		return newprice;
	}

	public void setNewprice(Short newprice) {
		this.newprice = newprice;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getClass_() {
		return class_;
	}

	public void setClass_(String class_) {
		this.class_ = class_;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublishhouse() {
		return publishhouse;
	}

	public void setPublishhouse(String publishhouse) {
		this.publishhouse = publishhouse;
	}

	public Date getPublishdate() {
		return publishdate;
	}

	public void setPublishdate(Date publishdate) {
		this.publishdate = publishdate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String listBooks() {
		list = bookService.findAll(Book.class);
		return SUCCESS;
	}

	public String viewBookDetail() {
		list = bookInfoService.findAll(BookInfo.class);
		return SUCCESS;
	}

	public String upload() throws Exception {
		System.out.println("fjfjjf");
		String path = ServletActionContext.getServletContext().getRealPath(
				"/upload");
		InputStream is = new FileInputStream(file);
		File destFile = new File(path, file.getName()
				+ new Timestamp().getDateTime());
		OutputStream os = new FileOutputStream(destFile);
		byte[] buffer = new byte[400];
		int length = 0;
		while ((length = is.read(buffer)) > 0) {
			os.write(buffer, 0, length);
		}
		is.close();
		os.close();

		Book book = new Book(name, num, primaryprice, newprice);
		book.setImage(image);
		BookInfo bookInfo = new BookInfo(book, class_, author, publishhouse,
				publishdate, description, image);
		bookService.save(book);
		bookInfoService.save(bookInfo);
		return SUCCESS;
	}

}
