package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
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
		return SUCCESS;
	}

	public String viewBookDetail() {
		list = bookService.findAll(Book.class);
		return SUCCESS;
	}

	public String upload() throws Exception {
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/upload");
		File dir = new File(realpath);
		if (!dir.exists()) {
			dir.mkdir();
		}
		if (fileType.equals("jpeg")) {
			fileType = ".jpg";
		} else if (fileType.equals("png")) {
			fileType = ".png";
		} else if (fileType.equals("gif")) {
			fileType = ".gif";
		}
		String fileName = new Timestamp().getDateTime() + fileType;
		FileUtils.copyFile(file, new File(dir, fileName));
//		//
//		String imgpath = "upload/";
//		String path = ServletActionContext.getServletContext().getRealPath("/");
//		System.out.println(path);
//		InputStream is = new FileInputStream(file);
//		File destFile = new File(path + imgpath, new Timestamp().getDateTime());
//		OutputStream os = new FileOutputStream(destFile);
//		byte[] buffer = new byte[400];
//		int length = 0;
//		while ((length = is.read(buffer)) > 0) {
//			os.write(buffer, 0, length);
//		}
//		is.close();
//		os.close();

		Book book = new Book(name, class_, author, num, primaryprice, newprice,
				publishhouse, publishdate, description);
		book.setImage("upload/" + fileName);
		bookService.save(book);
		return SUCCESS;
	}
}
