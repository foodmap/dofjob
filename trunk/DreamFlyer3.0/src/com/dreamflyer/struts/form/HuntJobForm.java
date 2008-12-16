/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 12-16-2008
 * 
 * XDoclet definition:
 * @struts.form name="huntJobForm"
 */
public class HuntJobForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** sex property */
	private String sex;

	/** subdate property */
	private String subdate;

	/** industry property */
	private String industry;

	/** workyears property */
	private Integer workyears;

	/** function property */
	private String function;

	/** grade property */
	private String grade;

	/** city property */
	private String city;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the sex.
	 * @return String
	 */
	public String getSex() {
		return sex;
	}

	/** 
	 * Set the sex.
	 * @param sex The sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/** 
	 * Returns the subdate.
	 * @return String
	 */
	public String getSubdate() {
		return subdate;
	}

	/** 
	 * Set the subdate.
	 * @param subdate The subdate to set
	 */
	public void setSubdate(String subdate) {
		this.subdate = subdate;
	}

	/** 
	 * Returns the industry.
	 * @return String
	 */
	public String getIndustry() {
		return industry;
	}

	/** 
	 * Set the industry.
	 * @param industry The industry to set
	 */
	public void setIndustry(String industry) {
		this.industry = industry;
	}

	/** 
	 * Returns the workyears.
	 * @return Integer
	 */
	public Integer getWorkyears() {
		return workyears;
	}

	/** 
	 * Set the workyears.
	 * @param workyears The workyears to set
	 */
	public void setWorkyears(Integer workyears) {
		this.workyears = workyears;
	}

	/** 
	 * Returns the function.
	 * @return String
	 */
	public String getFunction() {
		return function;
	}

	/** 
	 * Set the function.
	 * @param function The function to set
	 */
	public void setFunction(String function) {
		this.function = function;
	}

	/** 
	 * Returns the grade.
	 * @return String
	 */
	public String getGrade() {
		return grade;
	}

	/** 
	 * Set the grade.
	 * @param grade The grade to set
	 */
	public void setGrade(String grade) {
		this.grade = grade;
	}

	/** 
	 * Returns the city.
	 * @return String
	 */
	public String getCity() {
		return city;
	}

	/** 
	 * Set the city.
	 * @param city The city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
}