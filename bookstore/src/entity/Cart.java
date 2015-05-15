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
 * Cart entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "cart", catalog = "bookstore")
public class Cart implements java.io.Serializable {

	// Fields

	private CartId id;
	private Book book;
	private User user;
	private Short amount;
	private Date date;

	// Constructors

	/** default constructor */
	public Cart() {
	}

	/** full constructor */
	public Cart(CartId id, Book book, User user, Short amount, Date date) {
		this.id = id;
		this.book = book;
		this.user = user;
		this.amount = amount;
		this.date = date;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "bookid", column = @Column(name = "bookid", nullable = false)),
			@AttributeOverride(name = "userid", column = @Column(name = "userid", nullable = false, length = 20)) })
	public CartId getId() {
		return this.id;
	}

	public void setId(CartId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "bookid", nullable = false, insertable = false, updatable = false)
	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userid", nullable = false, insertable = false, updatable = false)
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "amount", nullable = false)
	public Short getAmount() {
		return this.amount;
	}

	public void setAmount(Short amount) {
		this.amount = amount;
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