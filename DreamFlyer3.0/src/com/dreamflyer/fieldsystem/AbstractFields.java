package com.dreamflyer.fieldsystem;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractFields entity provides the base persistence definition of the Fields
 * entity.
 * 
 * @author DoF
 */

public abstract class AbstractFields implements java.io.Serializable {

	// Fields

	private Integer id;
	private String address;
	private Set companyfieldses = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractFields() {
	}

	/** minimal constructor */
	public AbstractFields(String address) {
		this.address = address;
	}

	/** full constructor */
	public AbstractFields(String address, Set companyfieldses) {
		this.address = address;
		this.companyfieldses = companyfieldses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set getCompanyfieldses() {
		return this.companyfieldses;
	}

	public void setCompanyfieldses(Set companyfieldses) {
		this.companyfieldses = companyfieldses;
	}

}