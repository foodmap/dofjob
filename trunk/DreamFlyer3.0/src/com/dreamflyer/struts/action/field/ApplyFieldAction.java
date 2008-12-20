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
import com.dreamflyer.struts.form.field.UpdateFieldForm;
import com.dreamflyer.fieldsystem.factory.Singleton;

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
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String mode = (String)request.getParameter("mode");	
		if(mode.equalsIgnoreCase("apply")){
			return executeApply(mapping,form,request,response);
		} else if(mode.equalsIgnoreCase("update")){
			return executeUpdate(mapping,form,request,response);
		} else if(mode.equalsIgnoreCase("delete")){
			return executeDelete(mapping,form,request,response);
		} else{
			return mapping.findForward("error");
		}	
	}

	private ActionForward executeDelete(ActionMapping mapping,
			ActionForm applyFieldForm, HttpServletRequest request,
			HttpServletResponse response) {
		String dfid = (String)request.getParameter("dfid");	
		String _company_id = (String)request.getSession().getAttribute("company_id");		
		boolean exception = Singleton.getInstance()
		                    .getManager()
		                    .delApplyment(dfid, _company_id);
		  
	    if(!exception){	    	
	    	return mapping.findForward("error");
	    }
		return mapping.findForward("delete_succ");		
	}

	private ActionForward executeUpdate(ActionMapping mapping,
			ActionForm applyFieldForm, HttpServletRequest request,
			HttpServletResponse response) {
		UpdateFieldForm uff = (UpdateFieldForm)applyFieldForm;
		String _company_id = (String)request.getSession().getAttribute("company_id");		
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
	    if(!exception)	    	
	    	return mapping.findForward("error");	    
		return mapping.findForward("update_succ");		
	}

	private ActionForward executeApply(ActionMapping mapping,
			ActionForm applyFieldForm, HttpServletRequest request,
			HttpServletResponse response) {
		ApplyFieldForm form = (ApplyFieldForm)applyFieldForm;		
		
		Date end = null;
	    Date start = null;
		String _fid = form.getField_id();
		ActionMessages errors = new ActionMessages();		
	    String _company_id = (String)request.getSession().getAttribute("company_id");
	   
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
	    
	    boolean exception = Singleton.getInstance()
	                        .getManager()
	                        .addApplyment(_fid, _company_id, start, end);
	    
	     
	    if(!exception){	    	
	    	return mapping.findForward("error");
	    }
	    List list = Singleton.getInstance()
	               .getManager()
	               .getApplyment( _company_id);
	    if(list != null)
	    {
	    	request.setAttribute("_flist", list);
			return mapping.findForward("apply_succ");
	    }
	    return mapping.findForward("error");	    
	}	
}