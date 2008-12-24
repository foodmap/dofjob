package com.dreamflyer.fieldsystem;

/**
 * AbstractComFieldsAdd entity provides the base persistence definition of the
 * ComFieldsAdd entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractComFieldsAdd implements java.io.Serializable {

	// Fields

	private ComFieldsAddId id;

	// Constructors

	/** default constructor */
	public AbstractComFieldsAdd() {
	}

	/** full constructor */
	public AbstractComFieldsAdd(ComFieldsAddId id) {
		this.id = id;
	}

	// Property accessors

	public ComFieldsAddId getId() {
		return this.id;
	}

	public void setId(ComFieldsAddId id) {
		this.id = id;
	}

}