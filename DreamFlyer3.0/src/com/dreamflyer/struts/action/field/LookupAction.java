/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dreamflyer.struts.action.field;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dreamflyer.fieldsystem.factory.AbstractManagers;
import com.dreamflyer.fieldsystem.factory.Singleton;
import com.dreamflyer.fieldsystem.factory.Utility;
import com.dreamflyer.fieldsystem.interfaces.iManagerCreator;

/** 
 * MyEclipse Struts
 * Creation date: 12-25-2008
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="result" path="/result.jsp"
 */
public class LookupAction extends Action {
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
		// TODO Auto-generated method stub
		String _company_id = Utility.isLogin(request);
		if(_company_id == null)
			return mapping.findForward("error1");
		iManagerCreator factory = Singleton.getInstance();
		AbstractManagers manager = factory.getManager();
		List list = manager.getApplyment(_company_id);
		if(list == null)
			return mapping.findForward("error");
		request.setAttribute("result", list);
		return mapping.findForward("result");
	}
}