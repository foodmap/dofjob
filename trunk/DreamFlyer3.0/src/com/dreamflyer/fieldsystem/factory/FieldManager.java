package com.dreamflyer.fieldsystem.factory;

import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dreamflyer.fieldsystem.Companyfields;
import com.dreamflyer.fieldsystem.CompanyfieldsId;
import com.dreamflyer.fieldsystem.Fields;
import com.dreamflyer.hibernate.HibernateSessionFactory;
import com.dreamflyer.user.Company;

public class FieldManager extends AbstractManagers {

	@Override
	public boolean addApplyment(String _fid,String _company_id,Date start,Date end){		
		Fields fields = null;   
	    Company company = null;	    
	    boolean hasException = false;
	    Companyfields companyfields = null;
	    CompanyfieldsId companyfieldsid = null;	    
	  
	    try{	    	
	    	session = HibernateSessionFactory.getSession();
	    	tx = session.beginTransaction();	    	
	    	company = (Company)session.load(Company.class, 
	    			Integer.parseInt(_company_id));
	    	fields = (Fields)session.load(Fields.class, 
	    			Integer.parseInt(_fid));
	    	companyfieldsid = new CompanyfieldsId(company,fields);	    	
	    	companyfields = new Companyfields(companyfieldsid,start,end);
	    	session.save( companyfields );
	    	tx.commit();	    	  	
	    }catch(HibernateException he){
	    	hasException = true;
	    	if(tx!=null )
	    		tx.rollback();
	    	he.printStackTrace();
	    	throw he;
	    }finally{	    	
	    	session.close();		   
	    }	    
	    if(hasException){
	    	hasException = false;	    	
	    	return false;
	    }
		return true;		
	}

	@Override
	public boolean delApplyment(String fid,String _company_id) {
		boolean exception = true;
		try{	    	
	    	session = HibernateSessionFactory.getSession();
	    	tx = session.beginTransaction();
	    	String hqlDelete = "DELETE Companyfields where id.company.id= :cid and id.fields.id= :fid";
	    	int temp = session.createQuery(hqlDelete)
	    	           .setString("cid", _company_id)
	    	           .setString("fid",fid)
	    	           .executeUpdate();
	    	tx.commit();
	    }catch(HibernateException he){
	    	exception = false;
	    	if(tx != null)
	    		tx.rollback();
	    	he.printStackTrace();
	    	throw he;
	    }finally{
	    	session.close();	    	
	    }	 
		return exception;
		
	}

	@Override
	public List getApplyment(String _company_id) {
		List flist = null;
		try{
			session = HibernateSessionFactory.getSession();
			Transaction tx1 = session.beginTransaction();
	    	String hqlS = "from Fields as f where f.id in(select cf.id.fields.id from Companyfields as cf where cf.id.company.id = :co)";	    			
	    	flist = session.createQuery(hqlS)
	    	             .setString("co", _company_id)
	    	             .list();
	    	tx1.commit();    
		}catch(HibernateException he){
			he.printStackTrace();
			return null;
		}				
    	return flist;
	}

	@Override
	public List getFields() {
		boolean hasException = false;
		List<Fields> flist = null;
		try{			
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();
			String hqlS = "from Fields as f";
			flist = session.createQuery(hqlS).list();
			tx.commit();			
		}catch(HibernateException he){
			hasException = true;
			System.err.println(he.getMessage());
			throw he;			
		}finally{
			session.close();			
		}
		if(hasException){
			hasException = false;
			return null;
		}
		return flist;		
	}

	@Override
	public boolean updApplyment(String fid,String _company_id,Date start,Date end) {
		boolean exception = true;
		try{	    	
	    	session = HibernateSessionFactory.getSession();
	    	tx = session.beginTransaction();	    	
	    	String hqlUpdate="UPDATE Companyfields set startTime = :start where id.company.id = :cid and id.fields.id = :fid";
	    	int temp = session.createQuery(hqlUpdate)
	    	                  .setTimestamp("start", start)	    	                  
	    	                  .setString("cid", _company_id)
	    	                  .setString("fid", fid)
	    	                  .executeUpdate();	    	
	    	tx.commit();
	    }catch(HibernateException he){
	    	exception = false;
	    	if(tx != null)
	    		tx.rollback();
	    	he.printStackTrace();
	    	throw he;
	    }finally{
	    	session.close();	    	
	    }
	    return exception;
	}
	
	private Session session = null;
	private Transaction tx = null;
}
