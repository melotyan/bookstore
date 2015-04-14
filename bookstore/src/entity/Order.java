package entity;

import java.util.Date;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "order", catalog = "bookstore")
public class Order implements java.io.Serializable {

	// Fields

	private OrderId id;
	private Short amount;
	private Integer price;
	private Date date;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** full constructor */
	public Order(OrderId id, Short amount, Integer price, Date date) {
		this.id = id;
		this.amount = amount;
		this.price = price;
		this.date = date;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "bookid", column = @Column(name = "bookid", nullable = false)),
			@AttributeOverride(name = "userid", column = @Column(name = "userid", nullable = false, length = 20)) })
	public OrderId getId() {
		return this.id;
	}

	public void setId(OrderId id) {
		this.id = id;
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