package com.dreamflyer.struts.action.field;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dreamflyer.fieldsystem.factory.Singleton;
import com.dreamflyer.fieldsystem.factory.Utility;

public class UpdateAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {		
		String _company_id = Utility.isLogin(request);
		if(_company_id == null)
			return mapping.findForward("error1");
		List list = Singleton.getInstance("FieldManagerCreator")
		            .getManager()
		            .getApplyment(_company_id);
		if(list == null){			
			return mapping.findForward("error");
		}
		request.setAttribute("updlist", list);
		return mapping.findForward("updateF");
	}


}
