/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.action.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dreamflyer.loginsystem.loginstrategy.CompanyLogin;
import com.dreamflyer.loginsystem.loginstrategy.StudentLogin;
import com.dreamflyer.struts.form.users.LoginForm;

/** 
 * MyEclipse Struts
 * Creation date: 12-19-2008
 * 
 * XDoclet definition:
 * @struts.action path="/login" name="loginForm" input="/form/login.jsp" scope="request" validate="true"
 */
public class LoginAction extends Action {
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
		LoginForm loginForm = (LoginForm) form;// TODO Auto-generated method stub
		String username = loginForm.getUsername();
		String password = loginForm.getPassword();
		String usertype = loginForm.getUsertype();
		String verifycode = loginForm.getVerifycode();
		
		try{
			if(verifycode == null || !verifycode.equals((String)request.getSession().getAttribute("random"))){
				System.out.println("Wrong verify code!");
				return mapping.findForward("login_fail");
			}
			
			if(usertype.equals("student")){
					StudentLogin sl = new StudentLogin();
					boolean success = sl.login(username, password, request);
					if(success) return mapping.findForward("login_success");
					else return mapping.findForward("login_fail");
					
				}else{
					CompanyLogin cl = new CompanyLogin();
					boolean success = cl.login(username, password, request);
					if(success) return mapping.findForward("com_login_success");
					else return mapping.findForward("login_fail");
				}
				
			}catch(Exception e){
			e.printStackTrace();
			return mapping.findForward("login_fail");
		}
	}
}