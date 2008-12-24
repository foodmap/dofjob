/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.action.users;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dreamflyer.hibernate.HibernateSessionFactory;
import com.dreamflyer.struts.form.users.LoginForm;
import com.dreamflyer.user.Company;
import com.dreamflyer.user.Student;

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
					Session ses = HibernateSessionFactory.getSession();
					Transaction tx = ses.beginTransaction();
				
					String sqlquery = "from Student a where a.id = '" +
							username +"'";
				
					Query  requery = ses.createQuery(sqlquery);
					ArrayList studentlist = (ArrayList)requery.list();
				
					tx.commit();
					ses.close();
				
					Student student = new Student();
						
					if(studentlist == null || studentlist.size() == 0){
						System.out.println("User name not exist!");
						return mapping.findForward("login_fail");
					}
					student = (Student)studentlist.get(0);
					
					if(!password.equals(student.getPassword()))
					{
						System.out.println("Wrong Password!");
						return mapping.findForward("login_fail");
					}
					
					HttpSession session = request.getSession();
					Object cur_user = (Object)session.getAttribute("current_user");
					
					if(cur_user != null){
						session.removeAttribute("current_user");
					}
					session.setAttribute("current_user", student);
					
					return mapping.findForward("login_success");
					
				}else{
					Session ses = HibernateSessionFactory.getSession();
					Transaction tx = ses.beginTransaction();
				
					String sqlquery = "from Company a where a.username = '" +
							username +"'";
				
					Query  requery = ses.createQuery(sqlquery);
					ArrayList companylist = (ArrayList)requery.list();
				
					tx.commit();
					ses.close();
				
					Company company = new Company();
						
					if(companylist == null || companylist.size() == 0){
						System.out.println("User name not exist!");
						return mapping.findForward("login_fail");
					}
					company = (Company)companylist.get(0);
					
					if(!password.equals(company.getPassword()))
					{
						System.out.println("Wrong Password!");
						return mapping.findForward("login_fail");
					}
					
					HttpSession session = request.getSession();
					Object cur_user = (Object)session.getAttribute("current_user");
					
					if(cur_user != null){
						session.removeAttribute("current_user");
					}
					session.setAttribute("current_user", company);
					
					return mapping.findForward("com_login_success");
				}
				
			}catch(Exception e){
			e.printStackTrace();
			return mapping.findForward("login_fail");
		}
	}
}