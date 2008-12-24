/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.action.job;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dreamflyer.jobsystem.factory.JobSystemFactory;
import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iJobApplyerFactory;
import com.dreamflyer.struts.form.job.ApplyjobForm;
import com.dreamflyer.user.Student;

/** 
 * MyEclipse Struts
 * Creation date: 12-23-2008
 * 
 * XDoclet definition:
 * @struts.action path="/applyjob" name="applyjobForm" input="/searchjob.jsp" scope="request" validate="true"
 * @struts.action-forward name="success" path="/applyjob_succ.jsp"
 * @struts.action-forward name="failure" path="/applyjob_fail.jsp"
 */
public class ApplyjobAction extends Action {
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
		ApplyjobForm myform = (ApplyjobForm) form;
		long jobid = Long.parseLong(myform.getJobid());
		iJobApplyerFactory f = JobSystemFactory.getApplyer();
		iApplyJob applyer = f.getApplyer();
		HttpSession session = request.getSession();
		Student stu = (Student) session.getAttribute("currentstu");
		String studentid;
		/**
		if(stu==null){
			return mapping.findForward("failure");
		}
		
		else{
			studentid = stu.getId();
		}
		**/
		studentid = "5060379044";
		boolean result = applyer.addApplyment(studentid, jobid);
		if(result==false){
			return mapping.findForward("failure");
		}
		return mapping.findForward("success");
	}
}