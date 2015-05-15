package action;

import java.io.File;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import service.BookService;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.jmx.snmp.Timestamp;

import entity.Book;

public class BookAction extends ActionSupport {
	private File file;
	private String fileType;
	private Integer bookId;
	private String name;
	private Short num;
	private Short primaryprice;
	private Short newprice;
	private String class_;
	private String author;
	private String publishhouse;
	private Date publishdate;
	private String image;
	private String description;
	private BookService bookService;
	private List list;
	private Book book;
	
	public Book getBook() {
		return book;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String listBooks() {
		list = bookService.findAll(Book.class);
		Collections.reverse(list);
		return SUCCESS;
	}

	public String listBooksByClass() {
		list = bookService.findBySql(Book.class, "select * from book where class=" + class_);
		return SUCCESS;
	}
	
	public String viewBookDetail() {
		book = bookService.get(Book.class, bookId);
		return SUCCESS;
	}

	public String upload() throws Exception {
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/upload");
		System.out.println(realpath);
		File dir = new File(realpath);
		if (!dir.exists()) {
			dir.mkdir();
		}
		String fileName = new Timestamp().getDateTime() + fileType;

		Book book = new Book(name, class_, author, num, primaryprice, newprice,
				publishhouse, publishdate, description);
		book.setImage("upload/" + fileName);
		bookService.save(book);
		
		FileUtils.copyFile(file, new File(dir, fileName));
		return SUCCESS;
	}
	
	public String editBooks() throws Exception {
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/upload");
		System.out.println(realpath);
		File dir = new File(realpath);
		if (!dir.exists()) {
			dir.mkdir();
		}
		String fileName = new Timestamp().getDateTime() + fileType;
		Book book = bookService.get(Book.class, bookId);
		if (book == null)
			return ERROR;
		book.setImage("upload/" + fileName);
		bookService.update(book);
		FileUtils.copyFile(file, new File(dir, fileName));
		return SUCCESS;
	}
}
