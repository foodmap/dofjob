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
			String hostlink, String fax, String username, String password) {
		super(name, province, city, detailAddress, telephone, email, hostlink,
				fax, username, password);
	}

	/** full constructor */
	public Company(String name, String province, String city,
			String detailAddress, String telephone, String email,
			String hostlink, String fax, String description, String username,
			String password, Set jobs, Set companyfieldses) {
		super(name, province, city, detailAddress, telephone, email, hostlink,
				fax, description, username, password, jobs, companyfieldses);
	}
	
	public String getShortInfo(){
		String info = "";
		info += "公司名称：  ";
		info += this.getName();
		info += "<br/>";
		info += " 地址：  ";
		info += this.getDetailAddress();
		info += " 电话：  ";
	    info += this.getTelephone();
	    info += " Email:   ";
	    info += this.getEmail();
	    info += " 传真：  ";
	    info += this.getFax();
	    info += "<br/>";
	    info += " 主页  ";
	    info += this.getHostlink();
		return info;
	}


}
