/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.form.field;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 11-13-2008
 * 
 * XDoclet definition:
 * @struts.form name="applyFieldForm"
 * @author Hu Jingfei
 */
public class ApplyFieldForm extends ActionForm {
	/*
	 * Generated fields
	 */			
	private String fieldName;
	private String start_year;
	private String start_month;
	private String start_day;
	private String start_hour;
	private String start_minute;
	private String end_hour;
	private String end_minute;
	private String field_id;

	private List flist = null;
	/*
	 * Generated Methods
	 */

	public String getField_id() {
		return field_id;
	}

	public void setField_id(String field_id) {
		this.field_id = field_id;
	}

	public String getEnd_hour() {
		return end_hour;
	}

	public void setEnd_hour(String end_hour) {
		this.end_hour = end_hour;
	}

	public String getEnd_minute() {
		return end_minute;
	}

	public void setEnd_minute(String end_minute) {
		this.end_minute = end_minute;
	}

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
	 * Returns the time.
	 * @return Formatter$DateTime
	 */
	

	/** 
	 * Set the time.
	 * @param time The time to set
	 */
	

	/** 
	 * Returns the position.
	 * @return String
	 */
	

	/** 
	 * Set the position.
	 * @param position The position to set
	 */
	

	/** 
	 * Returns the duration.
	 * @return String
	 */
	
	

	/** 
	 * Set the duration.
	 * @param duration The duration to set
	 */
	

	public String getFieldName() {
		return fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public String getStart_year() {
		return start_year;
	}

	public void setStart_year(String start_year) {
		this.start_year = start_year;
	}

	public String getStart_month() {
		return start_month;
	}

	public void setStart_month(String start_month) {
		this.start_month = start_month;
	}

	public String getStart_day() {
		return start_day;
	}

	public void setStart_day(String start_day) {
		this.start_day = start_day;
	}

	public String getStart_hour() {
		return start_hour;
	}

	public void setStart_hour(String start_hour) {
		this.start_hour = start_hour;
	}

	public String getStart_minute() {
		return start_minute;
	}

	public void setStart_minute(String start_minute) {
		this.start_minute = start_minute;
	}
}