package com.dreamflyer.struts.action.field;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import com.dreamflyer.fieldsystem.factory.Singleton;
import com.dreamflyer.fieldsystem.factory.Utility;
import com.dreamflyer.struts.form.field.UpdateFieldForm;

public class UpdateFieldAction extends Action {
	public ActionForward execute(ActionMapping mapping,
			ActionForm updateFieldForm, HttpServletRequest request,
			HttpServletResponse response) {
		UpdateFieldForm uff = (UpdateFieldForm)updateFieldForm;
		String _company_id = Utility.isLogin(request);	
		if(_company_id == null)
			return mapping.findForward("error1");
	    ActionMessages errors = new ActionMessages();
		Date end = null;
	    Date start = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    
		String str = uff.getStart_year()
		        +"-"+uff.getStart_month()
		        +"-"+uff.getStart_day()
		        +" "+uff.getStart_hour()
		        +":"+uff.getStart_minute()+":00";	    
	    String _str = uff.getStart_year()
	             +"-"+uff.getStart_month()
	             +"-"+uff.getStart_day()
	             +" "+uff.getEnd_hour()
	             +":"+uff.getEnd_minute()+":00";	    
		try{	    		    	
	    	start = sdf.parse(str);
	    	end = sdf.parse(_str);	    	
		}catch(ParseException pe){
			errors.add("start_year", new ActionMessage("dateformat"));	    	
	    	saveErrors(request,errors);
	    	return mapping.getInputForward();
		}
		boolean exception = Singleton.getInstance()
		                    .getManager()
		                    .updApplyment(uff.getField_id(), _company_id, start, end);
	    if(exception)	    	
	    	return mapping.findForward("error");	    
		return mapping.findForward("update_succ");		
	}

}
