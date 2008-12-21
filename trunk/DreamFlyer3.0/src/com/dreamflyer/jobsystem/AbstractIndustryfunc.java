package com.dreamflyer.jobsystem;

/**
 * AbstractIndustryfunc entity provides the base persistence definition of the
 * Industryfunc entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractIndustryfunc implements java.io.Serializable {

	// Fields

	private IndustryfuncId id;

	// Constructors

	/** default constructor */
	public AbstractIndustryfunc() {
	}

	/** full constructor */
	public AbstractIndustryfunc(IndustryfuncId id) {
		this.id = id;
	}

	// Property accessors

	public IndustryfuncId getId() {
		return this.id;
	}

	public void setId(IndustryfuncId id) {
		this.id = id;
	}

}