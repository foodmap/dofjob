package com.dreamflyer.struts.form.field;

import org.apache.struts.action.ActionForm;

public class DeleteFieldForm extends ActionForm {
	private String field_id;
	private String company_id;
	public String getField_id() {
		return field_id;
	}
	public void setField_id(String field_id) {
		this.field_id = field_id;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

}
