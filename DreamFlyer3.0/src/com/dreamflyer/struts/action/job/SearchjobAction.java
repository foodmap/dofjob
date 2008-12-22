/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.action.job;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.dreamflyer.struts.form.job.SearchjobForm;

import com.dreamflyer.jobsystem.factory.*;
import com.dreamflyer.jobsystem.interfaces.*;

/** 
 * MyEclipse Struts
 * Creation date: 12-21-2008
 * 
 * XDoclet definition:
 * @struts.action path="/searchjob" name="searchjobForm" input="/searchjob.jsp" scope="request" validate="true"
 * @struts.action-forward name="getjob" path="/searchjob.jsp"
 */
public class SearchjobAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		SearchjobForm myform = (SearchjobForm) form;
		iJobApplyerFactory f = JobSystemFactory.getApplyer();
		iApplyJob applyer = f.getApplyer();
		String sex = myform.getSex();
		String grade = myform.getGrade();
		String city = myform.getCity();
		String province = myform.getProvince();
		int workyears = Integer.parseInt(myform.getWorkyears());
		int industryid = Integer.parseInt(myform.getIndustryid());
		int functionid = Integer.parseInt(myform.getFunctionid());
		List result = applyer.getJob(grade, industryid, functionid, workyears, sex, city,province);
		request.setAttribute("jobresult", result);
		return null;
	}
}