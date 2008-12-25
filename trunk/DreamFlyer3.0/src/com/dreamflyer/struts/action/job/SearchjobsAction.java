/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.action.job;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dreamflyer.jobsystem.factory.JobSystemFactory;
import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iJobApplyerFactory;
import com.dreamflyer.struts.form.job.SearchjobsForm;

/** 
 * MyEclipse Struts
 * Creation date: 12-22-2008
 * 
 * XDoclet definition:
 * @struts.action path="/searchjobs" name="searchjobsForm" input="/searchjob.jsp" scope="request" validate="true"
 * @struts.action-forward name="jobresult" path="/jobsystem/jobresult.jsp"
 */
public class SearchjobsAction extends Action {
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
		System.out.println("I am here yukuai");
		SearchjobsForm myform = (SearchjobsForm) form;
		iJobApplyerFactory f = JobSystemFactory.getApplyer();
		iApplyJob applyer = f.getApplyer();
		
		String sex = myform.getSex();
		String grade = myform.getGrade();
		String city = myform.getCity();
		String province = myform.getProvince();
		try {
			city = URLDecoder.decode(city,"UTF-8");
			province = URLDecoder.decode(province,"UTF-8");
			sex = URLDecoder.decode(sex,"UTF-8");
			grade = URLDecoder.decode(grade,"UTF-8");
			//System.out.println("����");
			//System.out.println(province);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		int workyears = Integer.parseInt(myform.getWorkyears());
		int industryid = Integer.parseInt(myform.getIndustryid());
		//System.out.println(myform.getFunctionid());
		int functionid = Integer.parseInt(myform.getFunctionid());
		
		List result = applyer.getJob(grade, industryid, functionid, workyears, sex, city,province);
		request.setAttribute("jobresult", result);
		System.out.println("11");
		return mapping.findForward("jobresult");
	}
}