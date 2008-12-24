/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.action.job;

import java.util.List;

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
import com.dreamflyer.user.Student;

/** 
 * MyEclipse Struts
 * Creation date: 12-23-2008
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="getmyjob" path="/getMyjob.jsp"
 */
public class GetmyapplymentAction extends Action {
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
		iJobApplyerFactory f = JobSystemFactory.getApplyer();
		iApplyJob applyer = f.getApplyer();
		HttpSession session = request.getSession();
		Student stu = (Student) session.getAttribute("current_user");
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
		List result = applyer.getMyApplyment(studentid);
		request.setAttribute("myjob", result);
		return mapping.findForward("getmyjob");
	}
}