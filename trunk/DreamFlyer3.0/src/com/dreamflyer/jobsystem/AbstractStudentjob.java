package com.dreamflyer.jobsystem;

/**
 * AbstractStudentjob entity provides the base persistence definition of the
 * Studentjob entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractStudentjob implements java.io.Serializable {

	// Fields

	private StudentjobId id;

	// Constructors

	/** default constructor */
	public AbstractStudentjob() {
	}

	/** full constructor */
	public AbstractStudentjob(StudentjobId id) {
		this.id = id;
	}

	// Property accessors

	public StudentjobId getId() {
		return this.id;
	}

	public void setId(StudentjobId id) {
		this.id = id;
	}

}