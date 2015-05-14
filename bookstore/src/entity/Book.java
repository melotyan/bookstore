package entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "book", catalog = "bookstore")
public class Book implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String class_;
	private String author;
	private Short num;
	private Short primaryprice;
	private Short newprice;
	private String publishhouse;
	private Date publishdate;
	private String image;
	private String description;
	private Set<Cart> carts = new HashSet<Cart>(0);
	private Set<OrderDetail> orderDetails = new HashSet<OrderDetail>(0);

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(String name, String class_, String author, Short num,
			Short primaryprice, Short newprice, String publishhouse,
			Date publishdate, String description) {
		this.name = name;
		this.class_ = class_;
		this.author = author;
		this.num = num;
		this.primaryprice = primaryprice;
		this.newprice = newprice;
		this.publishhouse = publishhouse;
		this.publishdate = publishdate;
		this.description = description;
	}

	/** full constructor */
	public Book(String name, String class_, String author, Short num,
			Short primaryprice, Short newprice, String publishhouse,
			Date publishdate, String image, String description, Set<Cart> carts,
			Set<OrderDetail> orderDetails) {
		this.name = name;
		this.class_ = class_;
		this.author = author;
		this.num = num;
		this.primaryprice = primaryprice;
		this.newprice = newprice;
		this.publishhouse = publishhouse;
		this.publishdate = publishdate;
		this.image = image;
		this.description = description;
		this.carts = carts;
		this.orderDetails = orderDetails;
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

	@Column(name = "name", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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

	@Column(name = "num", nullable = false)
	public Short getNum() {
		return this.num;
	}

	public void setNum(Short num) {
		this.num = num;
	}

	@Column(name = "primaryprice", nullable = false)
	public Short getPrimaryprice() {
		return this.primaryprice;
	}

	public void setPrimaryprice(Short primaryprice) {
		this.primaryprice = primaryprice;
	}

	@Column(name = "newprice", nullable = false)
	public Short getNewprice() {
		return this.newprice;
	}

	public void setNewprice(Short newprice) {
		this.newprice = newprice;
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
	public Date getpublishdate() {
		return this.publishdate;
	}

	public void setpublishdate(Date publishdate) {
		this.publishdate = publishdate;
	}

	@Column(name = "image")
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Column(name = "description", nullable = false, length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "book")
	public Set<Cart> getCarts() {
		return this.carts;
	}

	public void setCarts(Set<Cart> carts) {
		this.carts = carts;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "book")
	public Set<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

}