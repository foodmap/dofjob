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
public class GetfunctionForm extends ActionForm {
	/*
	 * Generated fields
	 */


	/** industryid property */
	private String industryid;


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

}
