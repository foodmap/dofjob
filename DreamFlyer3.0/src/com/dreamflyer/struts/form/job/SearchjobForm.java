/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.form.job;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 12-21-2008
 * 
 * XDoclet definition:
 * @struts.form name="searchjobForm"
 */
public class SearchjobForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** sex property */
	private String sex;

	/** industryid property */
	private String industryid;

	/** functionid property */
	private String functionid;

	/** workyears property */
	private String workyears;

	/** grade property */
	private String grade;

	/** city property */
	private String city;
	
	/** province property */
	private String province;

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
	 * Returns the industryid.
	 * @return String
	 */
	public String getIndustryid() {
		return industryid;
	}

	/** 
	 * Set the industryid.
	 * @param industryid The industryid to set
	 */
	public void setIndustryid(String industryid) {
		this.industryid = industryid;
	}

	/** 
	 * Returns the functionid.
	 * @return String
	 */
	public String getFunctionid() {
		return functionid;
	}

	/** 
	 * Set the functionid.
	 * @param functionid The functionid to set
	 */
	public void setFunctionid(String functionid) {
		this.functionid = functionid;
	}

	/** 
	 * Returns the workyears.
	 * @return String
	 */
	public String getWorkyears() {
		return workyears;
	}

	/** 
	 * Set the workyears.
	 * @param workyears The workyears to set
	 */
	public void setWorkyears(String workyears) {
		this.workyears = workyears;
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
	
	/** 
	 * Returns the province.
	 * @return String
	 */
	public String getProvince() {
		return province;
	}

	/** 
	 * Set the city.
	 * @param province The province to set
	 */
	public void setProvince(String province) {
		this.province = province;
	}
}