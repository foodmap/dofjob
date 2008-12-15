package com.dreamflyer.jobsystem;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractIndustry entity provides the base persistence definition of the
 * Industry entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractIndustry implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Set jobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractIndustry() {
	}

	/** minimal constructor */
	public AbstractIndustry(String name) {
		this.name = name;
	}

	/** full constructor */
	public AbstractIndustry(String name, Set jobs) {
		this.name = name;
		this.jobs = jobs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getJobs() {
		return this.jobs;
	}

	public void setJobs(Set jobs) {
		this.jobs = jobs;
	}

}