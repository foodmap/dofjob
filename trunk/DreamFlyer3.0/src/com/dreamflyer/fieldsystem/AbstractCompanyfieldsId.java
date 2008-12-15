package com.dreamflyer.fieldsystem;

import com.dreamflyer.user.*;
/**
 * AbstractCompanyfieldsId entity provides the base persistence definition of
 * the CompanyfieldsId entity.
 * 
 * @author DoF
 */

public abstract class AbstractCompanyfieldsId implements java.io.Serializable {

	// Fields

	private Company company;
	private Fields fields;

	// Constructors

	/** default constructor */
	public AbstractCompanyfieldsId() {
	}

	/** full constructor */
	public AbstractCompanyfieldsId(Company company, Fields fields) {
		this.company = company;
		this.fields = fields;
	}

	// Property accessors

	public Company getCompany() {
		return this.company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Fields getFields() {
		return this.fields;
	}

	public void setFields(Fields fields) {
		this.fields = fields;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AbstractCompanyfieldsId))
			return false;
		AbstractCompanyfieldsId castOther = (AbstractCompanyfieldsId) other;

		return ((this.getCompany() == castOther.getCompany()) || (this
				.getCompany() != null
				&& castOther.getCompany() != null && this.getCompany().equals(
				castOther.getCompany())))
				&& ((this.getFields() == castOther.getFields()) || (this
						.getFields() != null
						&& castOther.getFields() != null && this.getFields()
						.equals(castOther.getFields())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getCompany() == null ? 0 : this.getCompany().hashCode());
		result = 37 * result
				+ (getFields() == null ? 0 : this.getFields().hashCode());
		return result;
	}

}