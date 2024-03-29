package com.dreamflyer.user;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractCompany entity provides the base persistence definition of the
 * Company entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractCompany implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String province;
	private String city;
	private String detailAddress;
	private String telephone;
	private String email;
	private String hostlink;
	private String fax;
	private String description;
	private String username;
	private String password;
	private Set jobs = new HashSet(0);
	private Set companyfieldses = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractCompany() {
	}

	/** minimal constructor */
	public AbstractCompany(String name, String province, String city,
			String detailAddress, String telephone, String email,
			String hostlink, String fax, String username, String password) {
		this.name = name;
		this.province = province;
		this.city = city;
		this.detailAddress = detailAddress;
		this.telephone = telephone;
		this.email = email;
		this.hostlink = hostlink;
		this.fax = fax;
		this.username = username;
		this.password = password;
	}

	/** full constructor */
	public AbstractCompany(String name, String province, String city,
			String detailAddress, String telephone, String email,
			String hostlink, String fax, String description, String username,
			String password, Set jobs, Set companyfieldses) {
		this.name = name;
		this.province = province;
		this.city = city;
		this.detailAddress = detailAddress;
		this.telephone = telephone;
		this.email = email;
		this.hostlink = hostlink;
		this.fax = fax;
		this.description = description;
		this.username = username;
		this.password = password;
		this.jobs = jobs;
		this.companyfieldses = companyfieldses;
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

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDetailAddress() {
		return this.detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHostlink() {
		return this.hostlink;
	}

	public void setHostlink(String hostlink) {
		this.hostlink = hostlink;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set getJobs() {
		return this.jobs;
	}

	public void setJobs(Set jobs) {
		this.jobs = jobs;
	}

	public Set getCompanyfieldses() {
		return this.companyfieldses;
	}

	public void setCompanyfieldses(Set companyfieldses) {
		this.companyfieldses = companyfieldses;
	}

}