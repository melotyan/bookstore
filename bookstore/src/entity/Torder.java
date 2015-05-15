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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Torder entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "torder", catalog = "bookstore")
public class Torder implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Set<OrderDetail> orderDetails = new HashSet<OrderDetail>(0);

	// Constructors

	/** default constructor */
	public Torder() {
	}

	/** minimal constructor */
	public Torder(User user) {
		this.user = user;
	}

	/** full constructor */
	public Torder(User user, Set<OrderDetail> orderDetails) {
		this.user = user;
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

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userId", nullable = false)
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "torder")
	public Set<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

}