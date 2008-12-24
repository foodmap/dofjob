package com.dreamflyer.struts.action.field;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dreamflyer.fieldsystem.factory.Singleton;
import com.dreamflyer.fieldsystem.factory.Utility;

public class DeleteFieldAction extends Action {
	public ActionForward execute(ActionMapping mapping,
			ActionForm applyFieldForm, HttpServletRequest request,
			HttpServletResponse response) {
		String dfid = (String)request.getParameter("dfid");	
		String _company_id = Utility.isLogin(request);		
		if(_company_id == null)
			return mapping.findForward("error1");
		boolean exception = Singleton.getInstance()
		                    .getManager()
		                    .delApplyment(dfid, _company_id);
		  
	    if(exception){	    	
	    	return mapping.findForward("error");
	    }
		return mapping.findForward("delete_succ");		
	}

}
