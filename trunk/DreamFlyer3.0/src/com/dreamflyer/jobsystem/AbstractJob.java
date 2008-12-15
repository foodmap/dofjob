package com.dreamflyer.jobsystem;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import com.dreamflyer.user.*;
/**
 * AbstractJob entity provides the base persistence definition of the Job
 * entity.
 * 
 * @author DoF
 */

public abstract class AbstractJob implements java.io.Serializable {

	// Fields

	private Long id;
	private Industry industry;
	private Company company;
	private Function function;
	private String sex;
	private String grade;
	private Integer number;
	private Date subscribeDate;
	private Integer workYears;
	private String otherRequirements;
	private String description;
	private Set studentjobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractJob() {
	}

	/** minimal constructor */
	public AbstractJob(Industry industry, Company company, Function function,
			Integer number, Date subscribeDate) {
		this.industry = industry;
		this.company = company;
		this.function = function;
		this.number = number;
		this.subscribeDate = subscribeDate;
	}

	/** full constructor */
	public AbstractJob(Industry industry, Company company, Function function,
			String sex, String grade, Integer number, Date subscribeDate,
			Integer workYears, String otherRequirements, String description,
			Set studentjobs) {
		this.industry = industry;
		this.company = company;
		this.function = function;
		this.sex = sex;
		this.grade = grade;
		this.number = number;
		this.subscribeDate = subscribeDate;
		this.workYears = workYears;
		this.otherRequirements = otherRequirements;
		this.description = description;
		this.studentjobs = studentjobs;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Industry getIndustry() {
		return this.industry;
	}

	public void setIndustry(Industry industry) {
		this.industry = industry;
	}

	public Company getCompany() {
		return this.company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Function getFunction() {
		return this.function;
	}

	public void setFunction(Function function) {
		this.function = function;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getGrade() {
		return this.grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Date getSubscribeDate() {
		return this.subscribeDate;
	}

	public void setSubscribeDate(Date subscribeDate) {
		this.subscribeDate = subscribeDate;
	}

	public Integer getWorkYears() {
		return this.workYears;
	}

	public void setWorkYears(Integer workYears) {
		this.workYears = workYears;
	}

	public String getOtherRequirements() {
		return this.otherRequirements;
	}

	public void setOtherRequirements(String otherRequirements) {
		this.otherRequirements = otherRequirements;
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

}