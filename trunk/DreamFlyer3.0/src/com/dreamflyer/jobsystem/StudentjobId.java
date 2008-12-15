package com.dreamflyer.jobsystem;

import com.dreamflyer.user.*;
/**
 * StudentjobId entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class StudentjobId extends AbstractStudentjobId implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public StudentjobId() {
	}

	/** full constructor */
	public StudentjobId(Student student, Job job) {
		super(student, job);
	}

}
