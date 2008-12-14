package fieldsystem.com.sjtu.struts.action;

/**
 * @author Hu Jingfei
 */
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
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import fieldsystem.com.sjtu.struts.form.ApplyFieldForm;
import fieldsystem.com.sjtu.struts.form.DeleteFieldForm;
import fieldsystem.com.sjtu.struts.form.UpdateFieldForm;
import fieldsystem.com.sjtu.struts.model.user.Company;
import fieldsystem.com.sjtu.struts.model.user.Companyfields;
import fieldsystem.com.sjtu.struts.model.user.CompanyfieldsId;
import fieldsystem.com.sjtu.struts.model.user.Fields;

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
		String mode = (String)request.getAttribute("mode");		
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
		String coid = (String)request.getSession().getAttribute("company_id");
		DeleteFieldForm aff = (DeleteFieldForm)applyFieldForm;
		String fid = aff.getField_id();
		ActionMessages errors = new ActionMessages();		
		try{
	    	sf = new Configuration().configure().buildSessionFactory();
	    	session = sf.openSession();
	    	tx = session.beginTransaction();
	    	String hqlDelete = "delete from Companyfields where  company_id := cid and fields_id := fiid";
	    	int temp = session.createQuery(hqlDelete).setString("cid", coid).setString("fiid",fid).executeUpdate();	   
	    	/* for debugging.. */
	    	if(temp ==1 )
	    		System.out.println("Delete one record");
	    	tx.commit();
	    }catch(HibernateException he){
	    	errors.add("company_id", new ActionMessage("delete"));
	    	System.out.println("delete error");
	    	tx.rollback();
	    }
	    session.close();
	    sf.close();
	    if(!errors.isEmpty())
	    	return mapping.findForward("error");
		return mapping.findForward("delete_suc");
		
	}

	private ActionForward executeUpdate(ActionMapping mapping,
			ActionForm applyFieldForm, HttpServletRequest request,
			HttpServletResponse response) {
		UpdateFieldForm uff = (UpdateFieldForm)applyFieldForm;
		String comid = (String)request.getSession().getAttribute("company_id");
		SimpleDateFormat sdf =new   SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    String str = uff.getStart_year()+"-"+uff.getStart_month()+"-"+uff.getStart_day()
	    +"- "+uff.getStart_hour()+":"+uff.getStart_minute()+":00";
	    String _str =uff.getStart_year()+"-"+uff.getStart_month()+"-"+uff.getStart_day()
	    +"- "+uff.getEnd_hour()+":"+uff.getEnd_minute()+":00";
	    Date start = null;
	    Date end = null;
		try{
	    	sf = new Configuration().configure().buildSessionFactory();
	    	session = sf.openSession();
	    	tx = session.beginTransaction();
	    	String hqlUpdate="update Companyfields set start_time := star where company_id := cid and fields_id := fid";
	    	int temp = session.createSQLQuery(hqlUpdate)
	    	.setDate("star", start)
	    	.setString("cid", comid)
	    	.setString("fid", uff.getField_id())
	    	.executeUpdate();	    	
	    	tx.commit();
	    }catch(HibernateException he){
	    	tx.rollback();
	    }
	    session.close();
	    sf.close();
		return mapping.findForward("update_suc");		
	}

	private ActionForward executeApply(ActionMapping mapping,
			ActionForm applyFieldForm, HttpServletRequest request,
			HttpServletResponse response) {		
		ActionMessages error = new ActionMessages();
		ApplyFieldForm form = (ApplyFieldForm)applyFieldForm;		
	    String _id = (String)request.getSession().getAttribute( "company_id");
	    String _fid = (String)request.getSession().getAttribute("fields_id");
	    SimpleDateFormat sdf =new   SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    String str = form.getStart_year()+"-"+form.getStart_month()+"-"+form.getStart_day()
	    +"- "+form.getStart_hour()+":"+form.getStart_minute()+":00";
	    String _str =form.getStart_year()+"-"+form.getStart_month()+"-"+form.getStart_day()
	    +"- "+form.getEnd_hour()+":"+form.getEnd_minute()+":00";
	    Date start = null;
	    Date end = null;
	    CompanyfieldsId companyfieldsid = null;
	    Companyfields companyfields = null;
	    Company company = null;
	    Fields fields = null;
	    try{
	    	sf = new Configuration().configure().buildSessionFactory();
	    	session = sf.openSession();
	    	tx = session.beginTransaction();
	    	company = (Company)session.load(Company.class, _id);
	    	fields = (Fields)session.load(Fields.class, _fid);
	    	companyfieldsid = new CompanyfieldsId(company,fields);
	    	start = sdf.parse(str);
	    	end = sdf.parse(_str);
	    	companyfields = new Companyfields(companyfieldsid,start,end);
	    	session.save( companyfields );
	    	tx.commit();
	    }catch(HibernateException he){
	    	System.err.println("A hibernate exception occurs.");
	    	error.add("start_year", new ActionMessage("hibernate"));
	    	tx.rollback();
	    } catch (ParseException e) {
	    	error.add("start_year", new ActionMessage("dateformat"));
	    	System.err.println("Maybe your time formats is wrong.");	    	
			tx.rollback();
		}
	    session.close();
	    sf.close();
	    if(!error.isEmpty()){
	    	return mapping.getInputForward();
	    }
		return mapping.findForward("apply_suc");
	}
	
	private SessionFactory sf = null;
	private Session session = null;
	private Transaction tx = null;
}