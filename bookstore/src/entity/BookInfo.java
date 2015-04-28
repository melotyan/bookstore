package entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * BookInfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "book_info", catalog = "bookstore")
public class BookInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Book book;
	private String class_;
	private String author;
	private String publishhouse;
	private Date publishdate;
	private String image;

	// Constructors

	/** default constructor */
	public BookInfo() {
	}

	/** minimal constructor */
	public BookInfo(Book book, String class_, String author,
			String publishhouse, Date publishdate) {
		this.book = book;
		this.class_ = class_;
		this.author = author;
		this.publishhouse = publishhouse;
		this.publishdate = publishdate;
	}

	/** full constructor */
	public BookInfo(Book book, String class_, String author,
			String publishhouse, Date publishdate, String image) {
		this.book = book;
		this.class_ = class_;
		this.author = author;
		this.publishhouse = publishhouse;
		this.publishdate = publishdate;
		this.image = image;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id", unique = true, nullable = false, insertable = false, updatable = false)
	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	@Column(name = "class", nullable = false, length = 50)
	public String getClass_() {
		return this.class_;
	}

	public void setClass_(String class_) {
		this.class_ = class_;
	}

	@Column(name = "author", nullable = false, length = 50)
	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Column(name = "publishhouse", nullable = false, length = 50)
	public String getPublishhouse() {
		return this.publishhouse;
	}

	public void setPublishhouse(String publishhouse) {
		this.publishhouse = publishhouse;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "publishdate", nullable = false, length = 10)
	public Date getPublishdate() {
		return this.publishdate;
	}

	public void setPublishdate(Date publishdate) {
		this.publishdate = publishdate;
	}

	@Column(name = "image")
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}