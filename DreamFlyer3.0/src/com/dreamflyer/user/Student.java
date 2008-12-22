package com.dreamflyer.user;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Student entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private String id;
	private String name;
	private String major;
	private String username;
	private String password;
	private String address;
	private String sex;
	private Date birthday;
	private String email;
	private String grade;
	private String college;
	private String telephone;
	private String photo;
	private String description;
	private Set studentjobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(String id, String name, String major, String username,
			String password, String sex, String email, String grade,
			String college) {
		this.id = id;
		this.name = name;
		this.major = major;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.email = email;
		this.grade = grade;
		this.college = college;
	}

	/** full constructor */
	public Student(String id, String name, String major, String username,
			String password, String address, String sex, Date birthday,
			String email, String grade, String college, String telephone,
			String photo, String description, Set studentjobs) {
		this.id = id;
		this.name = name;
		this.major = major;
		this.username = username;
		this.password = password;
		this.address = address;
		this.sex = sex;
		this.birthday = birthday;
		this.email = email;
		this.grade = grade;
		this.college = college;
		this.telephone = telephone;
		this.photo = photo;
		this.description = description;
		this.studentjobs = studentjobs;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
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

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGrade() {
		return this.grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getCollege() {
		return this.college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set getStudentjobs() {
		return this.studentjobs;
	}

	public void setStudentjobs(Set studentjobs) {
		this.studentjobs = studentjobs;
	}
	
	public String getShortInfo(){
		String info = "";
		info += "姓名： ";
		info += this.getName();
		info += "专业： ";
		info += this.getMajor();
		info += "<br/>";
		info += "出生年月： ";
		info += this.getBirthday();
		info += "性别： ";
		info += this.getSex();
		info += "<br/>";
		info += "Email:  ";
		info += this.getEmail();
		info += "电话： ";
		info += this.getPhoto();
		return info;
	}

}