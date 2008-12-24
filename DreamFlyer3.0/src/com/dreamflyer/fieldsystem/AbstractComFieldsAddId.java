package com.dreamflyer.fieldsystem;

import java.util.Date;

/**
 * AbstractComFieldsAddId entity provides the base persistence definition of the
 * ComFieldsAddId entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractComFieldsAddId implements java.io.Serializable {

	// Fields

	private Integer companyId;
	private Integer fieldsId;
	private Date startTime;
	private Date endTime;
	private String address;

	// Constructors

	/** default constructor */
	public AbstractComFieldsAddId() {
	}

	/** full constructor */
	public AbstractComFieldsAddId(Integer companyId, Integer fieldsId,
			Date startTime, Date endTime, String address) {
		this.companyId = companyId;
		this.fieldsId = fieldsId;
		this.startTime = startTime;
		this.endTime = endTime;
		this.address = address;
	}

	// Property accessors

	public Integer getCompanyId() {
		return this.companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public Integer getFieldsId() {
		return this.fieldsId;
	}

	public void setFieldsId(Integer fieldsId) {
		this.fieldsId = fieldsId;
	}

	public Date getStartTime() {
		return this.startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AbstractComFieldsAddId))
			return false;
		AbstractComFieldsAddId castOther = (AbstractComFieldsAddId) other;

		return ((this.getCompanyId() == castOther.getCompanyId()) || (this
				.getCompanyId() != null
				&& castOther.getCompanyId() != null && this.getCompanyId()
				.equals(castOther.getCompanyId())))
				&& ((this.getFieldsId() == castOther.getFieldsId()) || (this
						.getFieldsId() != null
						&& castOther.getFieldsId() != null && this
						.getFieldsId().equals(castOther.getFieldsId())))
				&& ((this.getStartTime() == castOther.getStartTime()) || (this
						.getStartTime() != null
						&& castOther.getStartTime() != null && this
						.getStartTime().equals(castOther.getStartTime())))
				&& ((this.getEndTime() == castOther.getEndTime()) || (this
						.getEndTime() != null
						&& castOther.getEndTime() != null && this.getEndTime()
						.equals(castOther.getEndTime())))
				&& ((this.getAddress() == castOther.getAddress()) || (this
						.getAddress() != null
						&& castOther.getAddress() != null && this.getAddress()
						.equals(castOther.getAddress())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getCompanyId() == null ? 0 : this.getCompanyId().hashCode());
		result = 37 * result
				+ (getFieldsId() == null ? 0 : this.getFieldsId().hashCode());
		result = 37 * result
				+ (getStartTime() == null ? 0 : this.getStartTime().hashCode());
		result = 37 * result
				+ (getEndTime() == null ? 0 : this.getEndTime().hashCode());
		result = 37 * result
				+ (getAddress() == null ? 0 : this.getAddress().hashCode());
		return result;
	}

}