package com.dreamflyer.jobsystem;

import java.util.Set;

/**
 * Function entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class Function extends AbstractFunction implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Function() {
	}

	/** minimal constructor */
	public Function(String name) {
		super(name);
	}

	/** full constructor */
	public Function(String name, Set jobs) {
		super(name, jobs);
	}

}
