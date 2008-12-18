package com.dreamflyer.fieldsystem.interfaces;

import java.util.Date;
import java.util.List;

public interface iApplyField {

	public List getFields();
	public boolean addApplyment(String fid,String cid,Date start,Date end);
	public boolean delApplyment(String fid,String cid);
	public boolean updApplyment(String fid,String cid,Date start,Date end);
	public List getApplyment(String _company_id);	
}
