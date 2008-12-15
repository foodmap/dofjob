package com.dreamflyer.user;

/**
 * Manager entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class Manager extends AbstractManager implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Manager() {
	}

	/** minimal constructor */
	public Manager(String username) {
		super(username);
	}

	/** full constructor */
	public Manager(String username, String password) {
		super(username, password);
	}

}
