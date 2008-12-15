package com.dreamflyer.user;

import java.util.Set;

/**
 * Company entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class Company extends AbstractCompany implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Company() {
	}

	/** minimal constructor */
	public Company(String name, String province, String city,
			String detailAddress, String telephone, String email,
			String hostlink, String fax) {
		super(name, province, city, detailAddress, telephone, email, hostlink,
				fax);
	}

	/** full constructor */
	public Company(String name, String province, String city,
			String detailAddress, String telephone, String email,
			String hostlink, String fax, String description, String username,
			String password, Set jobs, Set companyfieldses) {
		super(name, province, city, detailAddress, telephone, email, hostlink,
				fax, description, username, password, jobs, companyfieldses);
	}

}
