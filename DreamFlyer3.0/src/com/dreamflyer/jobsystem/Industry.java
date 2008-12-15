package com.dreamflyer.jobsystem;

import java.util.Set;

/**
 * Industry entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class Industry extends AbstractIndustry implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Industry() {
	}

	/** minimal constructor */
	public Industry(String name) {
		super(name);
	}

	/** full constructor */
	public Industry(String name, Set jobs) {
		super(name, jobs);
	}

}
