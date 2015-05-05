package entity;

import java.util.Date;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * OrderDetail entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "order_detail", catalog = "bookstore")
public class OrderDetail implements java.io.Serializable {

	// Fields

	private OrderDetailId id;
	private Order order;
	private Book book;
	private Short amount;
	private Integer price;
	private Date date;

	// Constructors

	/** default constructor */
	public OrderDetail() {
	}

	/** full constructor */
	public OrderDetail(OrderDetailId id, Order order, Book book, Short amount,
			Integer price, Date date) {
		this.id = id;
		this.order = order;
		this.book = book;
		this.amount = amount;
		this.price = price;
		this.date = date;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "recordId", column = @Column(name = "recordId", nullable = false)),
			@AttributeOverride(name = "bookid", column = @Column(name = "bookid", nullable = false)) })
	public OrderDetailId getId() {
		return this.id;
	}

	public void setId(OrderDetailId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "recordId", nullable = false, insertable = false, updatable = false)
	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "bookid", nullable = false, insertable = false, updatable = false)
	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	@Column(name = "amount", nullable = false)
	public Short getAmount() {
		return this.amount;
	}

	public void setAmount(Short amount) {
		this.amount = amount;
	}

	@Column(name = "price", nullable = false)
	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date", nullable = false, length = 10)
	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}