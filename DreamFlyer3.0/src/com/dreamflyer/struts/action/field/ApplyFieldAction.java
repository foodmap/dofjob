package com.dreamflyer.struts.action.field;

/**
 * @author Hu Jingfei
 */
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import com.dreamflyer.struts.form.field.ApplyFieldForm;
import com.dreamflyer.fieldsystem.factory.Singleton;
import com.dreamflyer.fieldsystem.factory.Utility;

/** 
 * MyEclipse Struts
 * Creation date: 11-13-2008
 * 
 * XDoclet definition:
 * @struts.action path="/applyField" name="applyFieldForm" input="/fieldsystem/applyField.jsp" scope="request" validate="true"
 */
public class ApplyFieldAction extends Action {
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
	public ActionForward execute(ActionMapping mapping,
			ActionForm applyFieldForm, HttpServletRequest request,
			HttpServletResponse response) {
		ApplyFieldForm form = (ApplyFieldForm)applyFieldForm;		
		
		Date end = null;
	    Date start = null;
		String _fid = form.getField_id();
		ActionMessages errors = new ActionMessages();		
	    String _company_id = Utility.isLogin(request);
	    if( _company_id == null)
	    	return mapping.findForward("error1");
	   
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    
	    String str = form.getStart_year()
	            +"-"+form.getStart_month()
	            +"-"+form.getStart_day()
	            +" "+form.getStart_hour()
	            +":"+form.getStart_minute()+":00";
	    
	    String _str = form.getStart_year()
	             +"-"+form.getStart_month()
	             +"-"+form.getStart_day()
	             +" "+form.getEnd_hour()
	             +":"+form.getEnd_minute()+":00";
	    
	    try{
	    	start = sdf.parse(str);
	    	end = sdf.parse(_str);
	    }catch(ParseException pe){
	    	errors.add("start_year", new ActionMessage("dateformat"));
	    	saveErrors(request,errors);
	    	return mapping.getInputForward();
	    }
	    
	    boolean exception = Singleton.getInstance("FieldManagerCreator")
	                        .getManager()
	                        .addApplyment(_fid, _company_id, start, end);
	    
	     
	    if(exception){	    	
	    	return mapping.findForward("error");
	    }
	    List list = Singleton.getInstance("FieldManagerCreator")
	               .getManager()
	               .getApplyment( _company_id);
	    if(list != null)
	    {
	    	request.setAttribute("list_applied", list);
			return mapping.findForward("apply_succ");
	    }
	    return mapping.findForward("error");	    
	}	
}