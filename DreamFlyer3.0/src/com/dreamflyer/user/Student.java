package com.dreamflyer.user;

import java.util.Date;
import java.util.Set;

/**
 * Student entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class Student extends AbstractStudent implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(String id, String name, String major, String username,
			String password, String sex, String email, String grade,
			String college) {
		super(id, name, major, username, password, sex, email, grade, college);
	}

	/** full constructor */
	public Student(String id, String name, String major, String username,
			String password, String address, String sex, Date birthday,
			String email, String grade, String college, String telephone,
			String photo, String description, Set studentjobs) {
		super(id, name, major, username, password, address, sex, birthday,
				email, grade, college, telephone, photo, description,
				studentjobs);
	}

}
