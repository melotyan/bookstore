package entity;

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

/**
 * Book entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "book", catalog = "bookstore")
public class Book implements java.io.Serializable {

	// Fields

	private Integer id;
	private Short num;
	private Short primaryprice;
	private Short newprice;
	private String image;
	private Set<Cart> carts = new HashSet<Cart>(0);
	private Set<BookInfo> bookInfos = new HashSet<BookInfo>(0);
	private Set<OrderDetail> orderDetails = new HashSet<OrderDetail>(0);

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(Short num, Short primaryprice, Short newprice) {
		this.num = num;
		this.primaryprice = primaryprice;
		this.newprice = newprice;
	}

	/** full constructor */
	public Book(Short num, Short primaryprice, Short newprice, String image,
			Set<Cart> carts, Set<BookInfo> bookInfos,
			Set<OrderDetail> orderDetails) {
		this.num = num;
		this.primaryprice = primaryprice;
		this.newprice = newprice;
		this.image = image;
		this.carts = carts;
		this.bookInfos = bookInfos;
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

	@Column(name = "image")
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "book")
	public Set<Cart> getCarts() {
		return this.carts;
	}

	public void setCarts(Set<Cart> carts) {
		this.carts = carts;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "book")
	public Set<BookInfo> getBookInfos() {
		return this.bookInfos;
	}

	public void setBookInfos(Set<BookInfo> bookInfos) {
		this.bookInfos = bookInfos;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "book")
	public Set<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

}