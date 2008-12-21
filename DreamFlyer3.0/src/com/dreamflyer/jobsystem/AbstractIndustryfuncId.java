package com.dreamflyer.jobsystem;

/**
 * AbstractIndustryfuncId entity provides the base persistence definition of the
 * IndustryfuncId entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractIndustryfuncId implements java.io.Serializable {

	// Fields

	private Integer industryId;
	private Integer functionId;

	// Constructors

	/** default constructor */
	public AbstractIndustryfuncId() {
	}

	/** full constructor */
	public AbstractIndustryfuncId(Integer industryId, Integer functionId) {
		this.industryId = industryId;
		this.functionId = functionId;
	}

	// Property accessors

	public Integer getIndustryId() {
		return this.industryId;
	}

	public void setIndustryId(Integer industryId) {
		this.industryId = industryId;
	}

	public Integer getFunctionId() {
		return this.functionId;
	}

	public void setFunctionId(Integer functionId) {
		this.functionId = functionId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AbstractIndustryfuncId))
			return false;
		AbstractIndustryfuncId castOther = (AbstractIndustryfuncId) other;

		return ((this.getIndustryId() == castOther.getIndustryId()) || (this
				.getIndustryId() != null
				&& castOther.getIndustryId() != null && this.getIndustryId()
				.equals(castOther.getIndustryId())))
				&& ((this.getFunctionId() == castOther.getFunctionId()) || (this
						.getFunctionId() != null
						&& castOther.getFunctionId() != null && this
						.getFunctionId().equals(castOther.getFunctionId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getIndustryId() == null ? 0 : this.getIndustryId()
						.hashCode());
		result = 37
				* result
				+ (getFunctionId() == null ? 0 : this.getFunctionId()
						.hashCode());
		return result;
	}

}