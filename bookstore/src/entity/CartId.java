package entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * CartId entity. @author MyEclipse Persistence Tools
 */
@Embeddable
public class CartId implements java.io.Serializable {

	// Fields

	private Integer bookid;
	private String userid;

	// Constructors

	/** default constructor */
	public CartId() {
	}

	/** full constructor */
	public CartId(Integer bookid, String userid) {
		this.bookid = bookid;
		this.userid = userid;
	}

	// Property accessors

	@Column(name = "bookid", nullable = false)
	public Integer getBookid() {
		return this.bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	@Column(name = "userid", nullable = false, length = 20)
	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CartId))
			return false;
		CartId castOther = (CartId) other;

		return ((this.getBookid() == castOther.getBookid()) || (this
				.getBookid() != null && castOther.getBookid() != null && this
				.getBookid().equals(castOther.getBookid())))
				&& ((this.getUserid() == castOther.getUserid()) || (this
						.getUserid() != null && castOther.getUserid() != null && this
						.getUserid().equals(castOther.getUserid())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getBookid() == null ? 0 : this.getBookid().hashCode());
		result = 37 * result
				+ (getUserid() == null ? 0 : this.getUserid().hashCode());
		return result;
	}

}