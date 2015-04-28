package entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * OrderDetailId entity. @author MyEclipse Persistence Tools
 */
@Embeddable
public class OrderDetailId implements java.io.Serializable {

	// Fields

	private Integer recordId;
	private Integer bookid;

	// Constructors

	/** default constructor */
	public OrderDetailId() {
	}

	/** full constructor */
	public OrderDetailId(Integer recordId, Integer bookid) {
		this.recordId = recordId;
		this.bookid = bookid;
	}

	// Property accessors

	@Column(name = "recordId", nullable = false)
	public Integer getRecordId() {
		return this.recordId;
	}

	public void setRecordId(Integer recordId) {
		this.recordId = recordId;
	}

	@Column(name = "bookid", nullable = false)
	public Integer getBookid() {
		return this.bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof OrderDetailId))
			return false;
		OrderDetailId castOther = (OrderDetailId) other;

		return ((this.getRecordId() == castOther.getRecordId()) || (this
				.getRecordId() != null && castOther.getRecordId() != null && this
				.getRecordId().equals(castOther.getRecordId())))
				&& ((this.getBookid() == castOther.getBookid()) || (this
						.getBookid() != null && castOther.getBookid() != null && this
						.getBookid().equals(castOther.getBookid())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getRecordId() == null ? 0 : this.getRecordId().hashCode());
		result = 37 * result
				+ (getBookid() == null ? 0 : this.getBookid().hashCode());
		return result;
	}

}